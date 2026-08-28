package t8;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.d;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import jc.l;

/* compiled from: DialogHelper.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f14084a = new a();

    /* compiled from: DialogHelper.kt */
    /* renamed from: t8.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class ViewOnClickListenerC0351a implements View.OnClickListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ r8.b f14085f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ androidx.appcompat.app.d f14086g;

        public ViewOnClickListenerC0351a(r8.b bVar, androidx.appcompat.app.d dVar) {
            this.f14085f = bVar;
            this.f14086g = dVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f14085f.a(q8.a.CAMERA);
            this.f14086g.dismiss();
        }
    }

    /* compiled from: DialogHelper.kt */
    /* loaded from: classes.dex */
    public static final class b implements View.OnClickListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ r8.b f14087f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ androidx.appcompat.app.d f14088g;

        public b(r8.b bVar, androidx.appcompat.app.d dVar) {
            this.f14087f = bVar;
            this.f14088g = dVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f14087f.a(q8.a.GALLERY);
            this.f14088g.dismiss();
        }
    }

    /* compiled from: DialogHelper.kt */
    /* loaded from: classes.dex */
    public static final class c implements DialogInterface.OnCancelListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ r8.b f14089f;

        public c(r8.b bVar) {
            this.f14089f = bVar;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            this.f14089f.a(null);
        }
    }

    /* compiled from: DialogHelper.kt */
    /* loaded from: classes.dex */
    public static final class d implements DialogInterface.OnClickListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ r8.b f14090f;

        public d(r8.b bVar) {
            this.f14090f = bVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i10) {
            this.f14090f.a(null);
        }
    }

    /* compiled from: DialogHelper.kt */
    /* loaded from: classes.dex */
    public static final class e implements DialogInterface.OnDismissListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ r8.a f14091f;

        public e(r8.a aVar) {
            this.f14091f = aVar;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            r8.a aVar = this.f14091f;
            if (aVar != null) {
                aVar.onDismiss();
            }
        }
    }

    public final void a(Context context, r8.b<q8.a> bVar, r8.a aVar) {
        l.g(context, "context");
        l.g(bVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        View inflate = LayoutInflater.from(context).inflate(p8.d.f12112a, (ViewGroup) null);
        androidx.appcompat.app.d show = new d.a(context).setTitle(p8.e.f12124l).setView(inflate).setOnCancelListener(new c(bVar)).setNegativeButton(p8.e.f12113a, new d(bVar)).setOnDismissListener(new e(aVar)).show();
        l.b(inflate, "customView");
        ((LinearLayout) inflate.findViewById(p8.c.f12110a)).setOnClickListener(new ViewOnClickListenerC0351a(bVar, show));
        ((LinearLayout) inflate.findViewById(p8.c.f12111b)).setOnClickListener(new b(bVar, show));
    }
}
