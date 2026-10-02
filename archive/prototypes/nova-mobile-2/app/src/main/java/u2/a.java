package u2;

import android.content.DialogInterface;
import ic.l;
import java.util.Iterator;
import java.util.List;
import s2.c;
import vb.p;

/* compiled from: DialogCallbackExt.kt */
/* loaded from: classes.dex */
public final class a {

    /* compiled from: DialogCallbackExt.kt */
    /* renamed from: u2.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class DialogInterfaceOnShowListenerC0359a implements DialogInterface.OnShowListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f14333a;

        public DialogInterfaceOnShowListenerC0359a(c cVar) {
            this.f14333a = cVar;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            a.a(this.f14333a.g(), this.f14333a);
        }
    }

    public static final void a(List<l<c, p>> list, c cVar) {
        jc.l.g(list, "$this$invokeAll");
        jc.l.g(cVar, "dialog");
        Iterator<l<c, p>> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().invoke(cVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final c b(c cVar, l<? super c, p> lVar) {
        jc.l.g(cVar, "$this$onPreShow");
        jc.l.g(lVar, "callback");
        cVar.f().add(lVar);
        return cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final c c(c cVar, l<? super c, p> lVar) {
        jc.l.g(cVar, "$this$onShow");
        jc.l.g(lVar, "callback");
        cVar.g().add(lVar);
        if (cVar.isShowing()) {
            a(cVar.g(), cVar);
        }
        cVar.setOnShowListener(new DialogInterfaceOnShowListenerC0359a(cVar));
        return cVar;
    }
}
