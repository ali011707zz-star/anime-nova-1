package o6;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.widget.SlayerAvatar;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportViewHolder;
import jc.l;
import o6.d;

/* compiled from: BlockedUsersAdapter.kt */
/* loaded from: classes.dex */
public final class d extends n5.d<w4.a> {

    /* compiled from: BlockedUsersAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends SupportViewHolder<w4.a> {

        /* renamed from: f, reason: collision with root package name */
        public final j4.f f11758f;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public a(j4.f fVar) {
            super(r0);
            l.f(fVar, "binding");
            ConstraintLayout b10 = fVar.b();
            l.e(b10, "binding.root");
            this.f11758f = fVar;
        }

        public static final void d(a aVar, w4.a aVar2, View view) {
            l.f(aVar, "this$0");
            l.f(aVar2, "$model");
            l.e(view, "it");
            aVar.performClick(aVar2, view);
        }

        public static final void e(a aVar, w4.a aVar2, View view) {
            l.f(aVar, "this$0");
            l.f(aVar2, "$model");
            l.e(view, "it");
            aVar.performClick(aVar2, view);
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(final w4.a aVar) {
            l.f(aVar, "model");
            this.f11758f.f8333d.setText(aVar.a());
            SlayerAvatar slayerAvatar = this.f11758f.f8332c;
            l.e(slayerAvatar, "binding.thumbnail");
            l7.b.a(slayerAvatar, aVar.c());
            this.f11758f.f8332c.setOnClickListener(new View.OnClickListener() { // from class: o6.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.a.d(d.a.this, aVar, view);
                }
            });
            this.f11758f.f8331b.setOnClickListener(new View.OnClickListener() { // from class: o6.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.a.e(d.a.this, aVar, view);
                }
            });
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder, android.view.View.OnClickListener
        public void onClick(View view) {
            l.f(view, "v");
        }

        @Override // io.wax911.support.custom.recycler.SupportViewHolder
        public void onViewRecycled() {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<w4.a> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        Context context = viewGroup.getContext();
        l.e(context, "parent.context");
        j4.f c10 = j4.f.c(SupportExtentionKt.getLayoutInflater(context), viewGroup, false);
        l.e(c10, "inflate(inflater, parent, false)");
        return new a(c10);
    }
}
