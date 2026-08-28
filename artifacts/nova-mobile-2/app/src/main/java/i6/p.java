package i6;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.j;
import com.anslayer.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import i6.p;
import io.wax911.support.SupportExtentionKt;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: ProfileIconAdapter.kt */
/* loaded from: classes.dex */
public final class p extends androidx.recyclerview.widget.o<i6.b, b> {

    /* renamed from: c, reason: collision with root package name */
    public final int f7883c;

    /* renamed from: d, reason: collision with root package name */
    public final vb.e f7884d;

    /* compiled from: ProfileIconAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<i6.b> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(i6.b bVar, i6.b bVar2) {
            jc.l.f(bVar, "oldItem");
            jc.l.f(bVar2, "newItem");
            return jc.l.a(bVar, bVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(i6.b bVar, i6.b bVar2) {
            jc.l.f(bVar, "oldItem");
            jc.l.f(bVar2, "newItem");
            return jc.l.a(bVar.a(), bVar2.a());
        }
    }

    /* compiled from: ProfileIconAdapter.kt */
    /* loaded from: classes.dex */
    public final class b extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f7885a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ p f7886b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(p pVar, TextView textView) {
            super(textView);
            jc.l.f(pVar, "this$0");
            jc.l.f(textView, "textView");
            this.f7886b = pVar;
            this.f7885a = textView;
        }

        public static final void c(b bVar, View view) {
            jc.l.f(bVar, "this$0");
            new MaterialAlertDialogBuilder(bVar.f7885a.getContext()).setMessage((CharSequence) "يمكنك الحصول على النقاط عند المساهمة في اضافة و تعديل المحتوى في التطبيق").show();
        }

        public static /* synthetic */ void e(b bVar, Drawable drawable, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = bVar.f7886b.j();
            }
            bVar.d(drawable, i10);
        }

        public final void b(i6.b bVar) {
            jc.l.f(bVar, "infoType");
            if (bVar instanceof d) {
                this.f7885a.setText(bVar.a());
                Context context = this.f7885a.getContext();
                jc.l.e(context, "textView.context");
                e(this, SupportExtentionKt.getCompatDrawable(context, R.drawable.ic_vector_location_stroke), 0, 2, null);
                return;
            }
            if (bVar instanceof i6.a) {
                TextView textView = this.f7885a;
                textView.setText(textView.getResources().getString(R.string.birthday_not_today_month_day_year, bVar.a()));
                Context context2 = this.f7885a.getContext();
                jc.l.e(context2, "textView.context");
                e(this, SupportExtentionKt.getCompatDrawable(context2, R.drawable.ic_vector_balloon_stroke), 0, 2, null);
                return;
            }
            if (bVar instanceof i6.c) {
                TextView textView2 = this.f7885a;
                textView2.setText(textView2.getResources().getString(R.string.join_date, bVar.a()));
                Context context3 = this.f7885a.getContext();
                jc.l.e(context3, "textView.context");
                e(this, SupportExtentionKt.getCompatDrawable(context3, R.drawable.ic_vector_calendar), 0, 2, null);
                return;
            }
            if (!(bVar instanceof o)) {
                throw new NoWhenBranchMatchedException();
            }
            String string = this.f7885a.getResources().getString(R.string.top_contributors_points, Integer.valueOf(Integer.parseInt(bVar.a())));
            jc.l.e(string, "textView.resources.getSt…toInt()\n                )");
            TextView textView3 = this.f7885a;
            p pVar = this.f7886b;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(pVar.i());
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) string);
            spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
            textView3.setText(new SpannedString(spannableStringBuilder));
            this.f7885a.setOnClickListener(new View.OnClickListener() { // from class: i6.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    p.b.c(p.b.this, view);
                }
            });
            Context context4 = this.f7885a.getContext();
            jc.l.e(context4, "textView.context");
            d(SupportExtentionKt.getCompatDrawable(context4, R.drawable.medal), this.f7886b.i());
        }

        public final void d(Drawable drawable, int i10) {
            if (drawable != null) {
                drawable.setBounds(0, 0, k7.b.g(14), k7.b.g(14));
            }
            Drawable mutate = drawable == null ? null : drawable.mutate();
            if (mutate != null) {
                mutate.setColorFilter(new PorterDuffColorFilter(i10, PorterDuff.Mode.SRC_IN));
            }
            this.f7885a.setCompoundDrawablesRelative(drawable, null, null, null);
        }
    }

    /* compiled from: ProfileIconAdapter.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<Integer> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f7887f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.f7887f = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // ic.a
        public final Integer invoke() {
            return Integer.valueOf(SupportExtentionKt.getCompatColor(this.f7887f, R.color.yt_material_green_500));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Context context) {
        super(new a());
        jc.l.f(context, "context");
        this.f7883c = SupportExtentionKt.getColorFromAttr(context, android.R.attr.textColorSecondary);
        this.f7884d = vb.f.a(new c(context));
    }

    public final int i() {
        return ((Number) this.f7884d.getValue()).intValue();
    }

    public final int j() {
        return this.f7883c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b bVar, int i10) {
        jc.l.f(bVar, "holder");
        i6.b f10 = f(i10);
        if (f10 == null) {
            return;
        }
        bVar.b(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.profile_icon_item, viewGroup, false);
        if (inflate != null) {
            return new b(this, (TextView) inflate);
        }
        throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
    }
}
