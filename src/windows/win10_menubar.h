/*
 *  This file is part of Poedit (https://poedit.net)
 *
 *  Copyright (C) 2016-2025 Vaclav Slavik
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a
 *  copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 *  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 *  DEALINGS IN THE SOFTWARE.
 *
 */

#ifndef Poedit_win10_menubar_h
#define Poedit_win10_menubar_h

#include <wx/frame.h>
#include <wx/weakref.h>


class Windows10MenubarMixin
{
protected:
    /// Implementation of the non-standard menu, wraps mCtrl
    class MenuWindow : public wxWindow
    {
    public:
        MenuWindow();
        ~MenuWindow();

        void Create(wxWindow *parent);

        void SetHMENU(WXHMENU menu);
        bool TranslateMenubarMessage(WXMSG* pMsg);
        wxWindow* AdjustEffectiveFocus(wxWindow* focus) const;

        WXDWORD MSWGetStyle(long flags, WXDWORD* exstyle) const override;
        void DoSetSize(int x, int y, int width, int height, int sizeFlags) override;
        wxSize DoGetBestSize() const override;

    private:
        class mCtrlWrapper;

        mCtrlWrapper* m_mctrlWin;
        WXHWND m_mctrlHandle;
        wxWeakRef<wxWindow> m_previousFocus;
    };

    // Whether the new menubar should be used. Only do this on Windows 10 and
    // only when a screen reader isn't present, because the implementation
    // isn't accessibility enabled.
    bool ShouldUseCustomMenu() const;
    bool IsCustomMenuUsed() const { return m_menuBar != nullptr; }
    void CreateCustomMenu(wxWindow* parent);

    MenuWindow *GetMenuWindow() const { return m_menuBar;  }

private:
    MenuWindow* m_menuBar = nullptr;
};


// Implementation of nicer menubar on Windows 10 where it doesn't have extra
// horizontal line between the menubar and the toolbar.
template<typename T = wxFrame>
class WithWindows10Menubar : public T,
                             protected Windows10MenubarMixin
{
public:
    WithWindows10Menubar(wxWindow *parent,
                         wxWindowID id,
                         const wxString& title,
                         const wxPoint& pos = wxDefaultPosition,
                         const wxSize& size = wxDefaultSize,
                         long style = wxDEFAULT_FRAME_STYLE,
                         const wxString& name = wxFrameNameStr);

    wxPoint GetClientAreaOrigin() const override;

    wxWindow* FindFocusNoMenu();

    bool MSWTranslateMessage(WXMSG *msg) override;
    WXLRESULT MSWWindowProc(WXUINT message, WXWPARAM wParam, WXLPARAM lParam) override;

protected:
    /// Can be overriden to return false if derived class wants to place GetMenuWindow() itself
    virtual bool ShouldPlaceMenuInNCArea() const { return true;  }

    void PositionToolBar() override;
    void InternalSetMenuBar() override;

private:
    typedef T BaseClass;
};

#endif // Poedit_win10_menubar_h
