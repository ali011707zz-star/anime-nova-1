package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.d;
import androidx.appcompat.view.menu.i;

/* compiled from: MenuDialogHelper.java */
/* loaded from: classes.dex */
public class f implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, i.a {

    /* renamed from: f, reason: collision with root package name */
    public e f1031f;

    /* renamed from: g, reason: collision with root package name */
    public androidx.appcompat.app.d f1032g;

    /* renamed from: h, reason: collision with root package name */
    public c f1033h;

    /* renamed from: i, reason: collision with root package name */
    public i.a f1034i;

    public f(e eVar) {
        this.f1031f = eVar;
    }

    @Override // androidx.appcompat.view.menu.i.a
    public boolean a(e eVar) {
        i.a aVar = this.f1034i;
        if (aVar != null) {
            return aVar.a(eVar);
        }
        return false;
    }

    public void b() {
        androidx.appcompat.app.d dVar = this.f1032g;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    public void c(IBinder iBinder) {
        e eVar = this.f1031f;
        d.a aVar = new d.a(eVar.getContext());
        c cVar = new c(aVar.getContext(), d.g.f5293j);
        this.f1033h = cVar;
        cVar.setCallback(this);
        this.f1031f.addMenuPresenter(this.f1033h);
        aVar.setAdapter(this.f1033h.a(), this);
        View headerView = eVar.getHeaderView();
        if (headerView != null) {
            aVar.setCustomTitle(headerView);
        } else {
            aVar.setIcon(eVar.getHeaderIcon()).setTitle(eVar.getHeaderTitle());
        }
        aVar.setOnKeyListener(this);
        androidx.appcompat.app.d create = aVar.create();
        this.f1032g = create;
        create.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f1032g.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f1032g.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        this.f1031f.performItemAction((g) this.f1033h.a().getItem(i10), 0);
    }

    @Override // androidx.appcompat.view.menu.i.a
    public void onCloseMenu(e eVar, boolean z10) {
        if (z10 || eVar == this.f1031f) {
            b();
        }
        i.a aVar = this.f1034i;
        if (aVar != null) {
            aVar.onCloseMenu(eVar, z10);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1033h.onCloseMenu(this.f1031f, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i10 == 82 || i10 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f1032g.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f1032g.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f1031f.close(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f1031f.performShortcut(i10, keyEvent, 0);
    }
}
