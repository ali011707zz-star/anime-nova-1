package i5;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Layout;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.work.a;
import com.anslayer.R;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.anslayer.data.ListManagementWorker;
import com.anslayer.ui.anime.info.FullscreenVideoActivity;
import com.anslayer.ui.comment.CommentActivity;
import com.anslayer.ui.customlist.AddToCustomListActivity;
import com.anslayer.ui.profile.people.PeopleProfileActivity;
import com.anslayer.ui.profile.self.ProfileActivity;
import com.anslayer.ui.recommend.RecommendActivity;
import com.anslayer.ui.search.FilterActivity;
import com.anslayer.ui.webview.WebViewActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.RightAlignedHorizontalScrollView;
import com.anslayer.widget.SlayerImage;
import com.google.android.gms.common.api.Api;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import com.warkiz.widget.IndicatorSeekBar;
import d2.n;
import d2.u;
import g7.c;
import i5.b0;
import i5.e;
import i5.l0;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import io.wax911.support.custom.widget.SingleLineTextView;
import io.wax911.support.util.InstanceUtil;
import j4.c2;
import j4.d2;
import j4.e1;
import j4.e2;
import j4.f2;
import j4.g2;
import j4.h2;
import j4.r1;
import j4.s2;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.cache.DiskLruCache;
import rc.q0;

/* compiled from: SeriesFragment.kt */
/* loaded from: classes.dex */
public final class x extends p5.a<p4.p, i5.z, p4.p> implements b5.a, l0.a, e.b {

    /* renamed from: j, reason: collision with root package name */
    public Boolean f7698j;

    /* renamed from: q, reason: collision with root package name */
    public s2.c f7705q;

    /* renamed from: r, reason: collision with root package name */
    public l0 f7706r;

    /* renamed from: s, reason: collision with root package name */
    public i5.e f7707s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7708t;

    /* renamed from: z, reason: collision with root package name */
    public boolean f7714z;
    public static final /* synthetic */ oc.g<Object>[] C = {jc.y.e(new jc.o(x.class, "binding", "getBinding()Lcom/anslayer/databinding/FragmentSeriesDetailBinding;", 0))};
    public static final a B = new a(null);

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f7699k = vb.f.a(i.f7743f);

    /* renamed from: l, reason: collision with root package name */
    public final kc.a f7700l = FragmentExtensionsKt.a(this);

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f7701m = vb.f.a(new d());

    /* renamed from: n, reason: collision with root package name */
    public final vb.e f7702n = vb.f.a(new h());

    /* renamed from: o, reason: collision with root package name */
    public final vb.e f7703o = androidx.fragment.app.c0.a(this, jc.y.b(i5.b0.class), new w(new v(this)), new z());

    /* renamed from: p, reason: collision with root package name */
    public final vb.e f7704p = vb.f.a(t.f7789f);

    /* renamed from: u, reason: collision with root package name */
    public final vb.e f7709u = vb.f.a(new j());

    /* renamed from: v, reason: collision with root package name */
    public final vb.e f7710v = androidx.fragment.app.c0.a(this, jc.y.b(h6.c.class), new y(new C0152x(this)), null);

    /* renamed from: w, reason: collision with root package name */
    public final vb.e f7711w = vb.f.a(u.f7790f);

    /* renamed from: x, reason: collision with root package name */
    public final vb.e f7712x = vb.f.a(new c());

    /* renamed from: y, reason: collision with root package name */
    public final vb.e f7713y = vb.f.a(new e0());
    public final androidx.lifecycle.z<d2.u> A = new androidx.lifecycle.z() { // from class: i5.m
        @Override // androidx.lifecycle.z
        public final void B(Object obj) {
            x.s0(x.this, (d2.u) obj);
        }
    };

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<x, Bundle> {

        /* compiled from: SeriesFragment.kt */
        /* renamed from: i5.x$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0151a extends jc.m implements ic.l<Bundle, x> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0151a f7715f = new C0151a();

            public C0151a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final x invoke(Bundle bundle) {
                x xVar = new x();
                xVar.setArguments(bundle);
                return xVar;
            }
        }

        public a() {
            super(C0151a.f7715f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class a0 extends jc.m implements ic.p<String, String, vb.p> {
        public a0() {
            super(2);
        }

        public final void a(String str, String str2) {
            jc.l.f(str, "item");
            jc.l.f(str2, "id");
            androidx.fragment.app.e activity = x.this.getActivity();
            if (activity == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("anime_genre_ids", new o4.d(str, str2));
            Intent intent = new Intent(activity, (Class<?>) FilterActivity.class);
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            activity.startActivity(intent);
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ vb.p invoke(String str, String str2) {
            a(str, str2);
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7717a;

        static {
            int[] iArr = new int[u.a.values().length];
            iArr[u.a.SUCCEEDED.ordinal()] = 1;
            iArr[u.a.FAILED.ordinal()] = 2;
            f7717a = iArr;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class b0 extends jc.m implements ic.p<String, String, vb.p> {
        public b0() {
            super(2);
        }

        public final void a(String str, String str2) {
            jc.l.f(str, "item");
            jc.l.f(str2, "id");
            androidx.fragment.app.e activity = x.this.getActivity();
            if (activity == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("anime_genre_ids", new o4.d(str, str2));
            Intent intent = new Intent(activity, (Class<?>) FilterActivity.class);
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            activity.startActivity(intent);
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ vb.p invoke(String str, String str2) {
            a(str, str2);
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<r4.b> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<r4.b> {
        }

        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            Type b10;
            try {
                ja.f i02 = x.this.i0();
                String n10 = x.this.k0().n();
                jc.l.c(n10);
                Type type = new a().getType();
                jc.l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    jc.l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = i02.l(n10, b10);
                jc.l.b(l10, "fromJson(json, typeToken<T>())");
                return (r4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class c0 extends jc.m implements ic.p<String, String, vb.p> {
        public c0() {
            super(2);
        }

        public final void a(String str, String str2) {
            jc.l.f(str, "item");
            jc.l.f(str2, "id");
            androidx.fragment.app.e activity = x.this.getActivity();
            if (activity == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("anime_studio_ids", new o4.g(str, str2));
            Intent intent = new Intent(activity, (Class<?>) FilterActivity.class);
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            activity.startActivity(intent);
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ vb.p invoke(String str, String str2) {
            a(str, str2);
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.a<m7.e> {
        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m7.e invoke() {
            return new m7.e(x.this.getContext());
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class d0 extends jc.m implements ic.a<vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ p4.p f7723g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d0(p4.p pVar) {
            super(0);
            this.f7723g = pVar;
        }

        public final void a() {
            androidx.fragment.app.e activity = x.this.getActivity();
            if (activity == null) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putLong("anime_id", this.f7723g.m());
            bundle.putString("list_type", "anime_recommendations");
            bundle.putBoolean("from_anime_details", true);
            Intent intent = new Intent(activity, (Class<?>) RecommendActivity.class);
            intent.setFlags(268435456);
            intent.putExtras(bundle);
            activity.startActivity(intent);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesFragment$onContentRatingVote$1", f = "SeriesFragment.kt", l = {886}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f7724f;

        /* renamed from: g, reason: collision with root package name */
        public int f7725g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f7727i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f7728j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ long f7729k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ String f7730l;

        /* renamed from: m, reason: collision with root package name */
        public final /* synthetic */ p4.g f7731m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(int i10, String str, long j10, String str2, p4.g gVar, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f7727i = i10;
            this.f7728j = str;
            this.f7729k = j10;
            this.f7730l = str2;
            this.f7731m = gVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new e(this.f7727i, this.f7728j, this.f7729k, this.f7730l, this.f7731m, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x00e7 A[Catch: all -> 0x0027, Exception -> 0x002a, TRY_ENTER, TryCatch #4 {Exception -> 0x002a, blocks: (B:6:0x001e, B:13:0x00e7, B:14:0x014a), top: B:5:0x001e }] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x016d A[LOOP:0: B:17:0x016d->B:19:0x017c, LOOP_START, PHI: r14
          0x016d: PHI (r14v5 int) = (r14v0 int), (r14v6 int) binds: [B:16:0x016b, B:19:0x017c] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x01a0  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01c3 A[LOOP:2: B:44:0x01c3->B:46:0x01d2, LOOP_START, PHI: r14
          0x01c3: PHI (r14v3 int) = (r14v0 int), (r14v4 int) binds: [B:43:0x01c1, B:46:0x01d2] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01a1 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #5 {all -> 0x0027, blocks: (B:6:0x001e, B:13:0x00e7, B:14:0x014a, B:39:0x018d, B:48:0x01a1), top: B:5:0x001e }] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x01f2 A[LOOP:3: B:54:0x01f2->B:56:0x0200, LOOP_START, PHI: r14
          0x01f2: PHI (r14v1 int) = (r14v0 int), (r14v2 int) binds: [B:53:0x01f0, B:56:0x0200] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            r1 r1Var;
            int c10;
            SeriesEndpoint n02;
            Object addContentRating;
            r1 r1Var2;
            p4.g gVar;
            int childCount;
            androidx.fragment.app.e activity;
            int childCount2;
            int childCount3;
            List<p4.g> a10;
            Object obj2;
            Object d10 = bc.c.d();
            int i10 = this.f7725g;
            int i11 = 0;
            if (i10 == 0) {
                vb.k.b(obj);
                r1 a11 = r1.a(x.this.g0().f8291i.f8160b.getChildAt(this.f7727i));
                jc.l.e(a11, "bind(contentRow)");
                try {
                    ImageView imageView = a11.f8683b;
                    jc.l.e(imageView, "contentBinding.addRating");
                    imageView.setVisibility(8);
                    ProgressBar progressBar = a11.f8688g;
                    jc.l.e(progressBar, "contentBinding.progress");
                    progressBar.setVisibility(0);
                    LinearLayout linearLayout = x.this.g0().f8291i.f8160b;
                    jc.l.e(linearLayout, "binding.sectionContentRa…ng.contentRatingContainer");
                    int childCount4 = linearLayout.getChildCount();
                    if (childCount4 > 0) {
                        int i12 = 0;
                        while (true) {
                            int i13 = i12 + 1;
                            try {
                                View childAt = linearLayout.getChildAt(i12);
                                jc.l.e(childAt, "getChildAt(index)");
                                childAt.setEnabled(false);
                                if (i13 >= childCount4) {
                                    break;
                                }
                                i12 = i13;
                            } catch (Exception e10) {
                                e = e10;
                                r1Var2 = a11;
                                e.printStackTrace();
                                ImageView imageView2 = r1Var2.f8683b;
                                jc.l.e(imageView2, "contentBinding.addRating");
                                imageView2.setVisibility(0);
                                activity = x.this.getActivity();
                                if (activity == null) {
                                }
                                ProgressBar progressBar2 = r1Var2.f8688g;
                                jc.l.e(progressBar2, "contentBinding.progress");
                                progressBar2.setVisibility(8);
                                LinearLayout linearLayout2 = x.this.g0().f8291i.f8160b;
                                jc.l.e(linearLayout2, "binding.sectionContentRa…ng.contentRatingContainer");
                                childCount2 = linearLayout2.getChildCount();
                                if (childCount2 > 0) {
                                }
                                return vb.p.f15031a;
                            } catch (Throwable th) {
                                th = th;
                                r1Var2 = a11;
                                ProgressBar progressBar3 = r1Var2.f8688g;
                                jc.l.e(progressBar3, "contentBinding.progress");
                                progressBar3.setVisibility(8);
                                LinearLayout linearLayout3 = x.this.g0().f8291i.f8160b;
                                jc.l.e(linearLayout3, "binding.sectionContentRa…ng.contentRatingContainer");
                                childCount = linearLayout3.getChildCount();
                                if (childCount > 0) {
                                }
                                throw th;
                            }
                        }
                    }
                    c10 = h7.a.f7376a.c(this.f7728j);
                    n02 = x.this.n0();
                } catch (Exception e11) {
                    e = e11;
                    r1Var = a11;
                    r1Var2 = r1Var;
                    e.printStackTrace();
                    ImageView imageView22 = r1Var2.f8683b;
                    jc.l.e(imageView22, "contentBinding.addRating");
                    imageView22.setVisibility(0);
                    activity = x.this.getActivity();
                    if (activity == null) {
                    }
                    ProgressBar progressBar22 = r1Var2.f8688g;
                    jc.l.e(progressBar22, "contentBinding.progress");
                    progressBar22.setVisibility(8);
                    LinearLayout linearLayout22 = x.this.g0().f8291i.f8160b;
                    jc.l.e(linearLayout22, "binding.sectionContentRa…ng.contentRatingContainer");
                    childCount2 = linearLayout22.getChildCount();
                    if (childCount2 > 0) {
                    }
                    return vb.p.f15031a;
                } catch (Throwable th2) {
                    th = th2;
                    r1Var = a11;
                    r1Var2 = r1Var;
                    ProgressBar progressBar32 = r1Var2.f8688g;
                    jc.l.e(progressBar32, "contentBinding.progress");
                    progressBar32.setVisibility(8);
                    LinearLayout linearLayout32 = x.this.g0().f8291i.f8160b;
                    jc.l.e(linearLayout32, "binding.sectionContentRa…ng.contentRatingContainer");
                    childCount = linearLayout32.getChildCount();
                    if (childCount > 0) {
                    }
                    throw th;
                }
                if (n02 == null) {
                    r1Var2 = a11;
                    gVar = null;
                    if (gVar != null) {
                        this.f7731m.j(gVar.f());
                        this.f7731m.i(gVar.e());
                        this.f7731m.g(gVar.c());
                        TextView textView = r1Var2.f8685d;
                        h7.a aVar = h7.a.f7376a;
                        textView.setText(aVar.b(gVar.c()));
                        TextView textView2 = r1Var2.f8687f;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append('(');
                        sb2.append(gVar.f());
                        sb2.append(')');
                        textView2.setText(sb2.toString());
                        TextView textView3 = r1Var2.f8684c;
                        Context context = r1Var2.b().getContext();
                        jc.l.e(context, "contentBinding.root.context");
                        textView3.setBackground(aVar.d(context, gVar.c()));
                    }
                    ImageView imageView3 = r1Var2.f8683b;
                    jc.l.e(imageView3, "contentBinding.addRating");
                    imageView3.setVisibility(8);
                    ProgressBar progressBar4 = r1Var2.f8688g;
                    jc.l.e(progressBar4, "contentBinding.progress");
                    progressBar4.setVisibility(8);
                    LinearLayout linearLayout4 = x.this.g0().f8291i.f8160b;
                    jc.l.e(linearLayout4, "binding.sectionContentRa…ng.contentRatingContainer");
                    childCount3 = linearLayout4.getChildCount();
                    if (childCount3 > 0) {
                        while (true) {
                            int i14 = i11 + 1;
                            View childAt2 = linearLayout4.getChildAt(i11);
                            jc.l.e(childAt2, "getChildAt(index)");
                            childAt2.setEnabled(true);
                            if (i14 >= childCount3) {
                                break;
                            }
                            i11 = i14;
                        }
                    }
                    return vb.p.f15031a;
                }
                long j10 = this.f7729k;
                String str = this.f7730l;
                this.f7724f = a11;
                this.f7725g = 1;
                r1Var = a11;
                try {
                    addContentRating = n02.addContentRating(j10, str, c10, this);
                    if (addContentRating == d10) {
                        return d10;
                    }
                } catch (Exception e12) {
                    e = e12;
                    r1Var2 = r1Var;
                    e.printStackTrace();
                    ImageView imageView222 = r1Var2.f8683b;
                    jc.l.e(imageView222, "contentBinding.addRating");
                    imageView222.setVisibility(0);
                    activity = x.this.getActivity();
                    if (activity == null) {
                    }
                    ProgressBar progressBar222 = r1Var2.f8688g;
                    jc.l.e(progressBar222, "contentBinding.progress");
                    progressBar222.setVisibility(8);
                    LinearLayout linearLayout222 = x.this.g0().f8291i.f8160b;
                    jc.l.e(linearLayout222, "binding.sectionContentRa…ng.contentRatingContainer");
                    childCount2 = linearLayout222.getChildCount();
                    if (childCount2 > 0) {
                    }
                    return vb.p.f15031a;
                } catch (Throwable th3) {
                    th = th3;
                    r1Var2 = r1Var;
                    ProgressBar progressBar322 = r1Var2.f8688g;
                    jc.l.e(progressBar322, "contentBinding.progress");
                    progressBar322.setVisibility(8);
                    LinearLayout linearLayout322 = x.this.g0().f8291i.f8160b;
                    jc.l.e(linearLayout322, "binding.sectionContentRa…ng.contentRatingContainer");
                    childCount = linearLayout322.getChildCount();
                    if (childCount > 0) {
                    }
                    throw th;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                r1Var2 = (r1) this.f7724f;
                try {
                    try {
                        vb.k.b(obj);
                        r1Var = r1Var2;
                        addContentRating = obj;
                    } catch (Exception e13) {
                        e = e13;
                        e.printStackTrace();
                        ImageView imageView2222 = r1Var2.f8683b;
                        jc.l.e(imageView2222, "contentBinding.addRating");
                        imageView2222.setVisibility(0);
                        activity = x.this.getActivity();
                        if (activity == null) {
                            k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                        }
                        ProgressBar progressBar2222 = r1Var2.f8688g;
                        jc.l.e(progressBar2222, "contentBinding.progress");
                        progressBar2222.setVisibility(8);
                        LinearLayout linearLayout2222 = x.this.g0().f8291i.f8160b;
                        jc.l.e(linearLayout2222, "binding.sectionContentRa…ng.contentRatingContainer");
                        childCount2 = linearLayout2222.getChildCount();
                        if (childCount2 > 0) {
                            while (true) {
                                int i15 = i11 + 1;
                                View childAt3 = linearLayout2222.getChildAt(i11);
                                jc.l.e(childAt3, "getChildAt(index)");
                                childAt3.setEnabled(true);
                                if (i15 >= childCount2) {
                                    break;
                                }
                                i11 = i15;
                            }
                        }
                        return vb.p.f15031a;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    ProgressBar progressBar3222 = r1Var2.f8688g;
                    jc.l.e(progressBar3222, "contentBinding.progress");
                    progressBar3222.setVisibility(8);
                    LinearLayout linearLayout3222 = x.this.g0().f8291i.f8160b;
                    jc.l.e(linearLayout3222, "binding.sectionContentRa…ng.contentRatingContainer");
                    childCount = linearLayout3222.getChildCount();
                    if (childCount > 0) {
                        while (true) {
                            int i16 = i11 + 1;
                            View childAt4 = linearLayout3222.getChildAt(i11);
                            jc.l.e(childAt4, "getChildAt(index)");
                            childAt4.setEnabled(true);
                            if (i16 >= childCount) {
                                break;
                            }
                            i11 = i16;
                        }
                    }
                    throw th;
                }
            }
            p4.l lVar = (p4.l) addContentRating;
            if (lVar != null && (a10 = lVar.a()) != null) {
                String str2 = this.f7730l;
                Iterator<T> it2 = a10.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = it2.next();
                    if (jc.l.a(((p4.g) obj2).a(), str2)) {
                        break;
                    }
                }
                gVar = (p4.g) obj2;
                r1Var2 = r1Var;
                if (gVar != null) {
                }
                ImageView imageView32 = r1Var2.f8683b;
                jc.l.e(imageView32, "contentBinding.addRating");
                imageView32.setVisibility(8);
                ProgressBar progressBar42 = r1Var2.f8688g;
                jc.l.e(progressBar42, "contentBinding.progress");
                progressBar42.setVisibility(8);
                LinearLayout linearLayout42 = x.this.g0().f8291i.f8160b;
                jc.l.e(linearLayout42, "binding.sectionContentRa…ng.contentRatingContainer");
                childCount3 = linearLayout42.getChildCount();
                if (childCount3 > 0) {
                }
                return vb.p.f15031a;
            }
            gVar = null;
            r1Var2 = r1Var;
            if (gVar != null) {
            }
            ImageView imageView322 = r1Var2.f8683b;
            jc.l.e(imageView322, "contentBinding.addRating");
            imageView322.setVisibility(8);
            ProgressBar progressBar422 = r1Var2.f8688g;
            jc.l.e(progressBar422, "contentBinding.progress");
            progressBar422.setVisibility(8);
            LinearLayout linearLayout422 = x.this.g0().f8291i.f8160b;
            jc.l.e(linearLayout422, "binding.sectionContentRa…ng.contentRatingContainer");
            childCount3 = linearLayout422.getChildCount();
            if (childCount3 > 0) {
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class e0 extends jc.m implements ic.a<Long> {
        public e0() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke() {
            return Long.valueOf(x.this.k0().N().get().D());
        }
    }

    /* compiled from: SeriesFragment.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesFragment$onRemoveRatingVote$1", f = "SeriesFragment.kt", l = {918}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class f extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f7733f;

        /* renamed from: g, reason: collision with root package name */
        public int f7734g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f7736i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ long f7737j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ String f7738k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ p4.g f7739l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(int i10, long j10, String str, p4.g gVar, ac.d<? super f> dVar) {
            super(2, dVar);
            this.f7736i = i10;
            this.f7737j = j10;
            this.f7738k = str;
            this.f7739l = gVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new f(this.f7736i, this.f7737j, this.f7738k, this.f7739l, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((f) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x00ca A[Catch: all -> 0x0020, Exception -> 0x0023, TryCatch #0 {all -> 0x0020, blocks: (B:7:0x001b, B:8:0x009a, B:12:0x00ca, B:13:0x012d, B:24:0x00a0, B:27:0x00a7, B:28:0x00ad, B:30:0x00b3, B:34:0x00c6, B:39:0x016a, B:48:0x017e), top: B:2:0x0013 }] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0150 A[LOOP:0: B:16:0x0150->B:18:0x015f, LOOP_START, PHI: r8
          0x0150: PHI (r8v5 int) = (r8v0 int), (r8v6 int) binds: [B:15:0x014e, B:18:0x015f] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x017d  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01a0 A[LOOP:2: B:44:0x01a0->B:46:0x01af, LOOP_START, PHI: r8
          0x01a0: PHI (r8v3 int) = (r8v0 int), (r8v4 int) binds: [B:43:0x019e, B:46:0x01af] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x017e A[Catch: all -> 0x0020, TRY_LEAVE, TryCatch #0 {all -> 0x0020, blocks: (B:7:0x001b, B:8:0x009a, B:12:0x00ca, B:13:0x012d, B:24:0x00a0, B:27:0x00a7, B:28:0x00ad, B:30:0x00b3, B:34:0x00c6, B:39:0x016a, B:48:0x017e), top: B:2:0x0013 }] */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v8 */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            r1 r1Var;
            Exception e10;
            SeriesEndpoint n02;
            androidx.fragment.app.e activity;
            int childCount;
            p4.g gVar;
            int childCount2;
            List<p4.g> a10;
            Object obj2;
            r1 d10 = bc.c.d();
            int i10 = this.f7734g;
            int i11 = 0;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    r1 a11 = r1.a(x.this.g0().f8291i.f8160b.getChildAt(this.f7736i));
                    jc.l.e(a11, "bind(contentRow)");
                    try {
                        ImageView imageView = a11.f8683b;
                        jc.l.e(imageView, "contentBinding.addRating");
                        imageView.setVisibility(8);
                        ProgressBar progressBar = a11.f8688g;
                        jc.l.e(progressBar, "contentBinding.progress");
                        progressBar.setVisibility(0);
                        LinearLayout linearLayout = x.this.g0().f8291i.f8160b;
                        jc.l.e(linearLayout, "binding.sectionContentRa…ng.contentRatingContainer");
                        int childCount3 = linearLayout.getChildCount();
                        if (childCount3 > 0) {
                            int i12 = 0;
                            while (true) {
                                int i13 = i12 + 1;
                                View childAt = linearLayout.getChildAt(i12);
                                jc.l.e(childAt, "getChildAt(index)");
                                childAt.setEnabled(false);
                                if (i13 >= childCount3) {
                                    break;
                                }
                                i12 = i13;
                            }
                        }
                        n02 = x.this.n0();
                    } catch (Exception e11) {
                        r1Var = a11;
                        e10 = e11;
                        e10.printStackTrace();
                        ImageView imageView2 = r1Var.f8683b;
                        jc.l.e(imageView2, "contentBinding.addRating");
                        imageView2.setVisibility(8);
                        activity = x.this.getActivity();
                        if (activity == null) {
                        }
                        ProgressBar progressBar2 = r1Var.f8688g;
                        jc.l.e(progressBar2, "contentBinding.progress");
                        progressBar2.setVisibility(8);
                        LinearLayout linearLayout2 = x.this.g0().f8291i.f8160b;
                        jc.l.e(linearLayout2, "binding.sectionContentRa…ng.contentRatingContainer");
                        childCount = linearLayout2.getChildCount();
                        if (childCount > 0) {
                        }
                        return vb.p.f15031a;
                    } catch (Throwable th) {
                        d10 = a11;
                        th = th;
                        ProgressBar progressBar3 = d10.f8688g;
                        jc.l.e(progressBar3, "contentBinding.progress");
                        progressBar3.setVisibility(8);
                        LinearLayout linearLayout3 = x.this.g0().f8291i.f8160b;
                        jc.l.e(linearLayout3, "binding.sectionContentRa…ng.contentRatingContainer");
                        int childCount4 = linearLayout3.getChildCount();
                        if (childCount4 > 0) {
                            while (true) {
                                int i14 = i11 + 1;
                                View childAt2 = linearLayout3.getChildAt(i11);
                                jc.l.e(childAt2, "getChildAt(index)");
                                childAt2.setEnabled(true);
                                if (i14 >= childCount4) {
                                    break;
                                }
                                i11 = i14;
                            }
                        }
                        throw th;
                    }
                    if (n02 == null) {
                        r1Var = a11;
                        gVar = null;
                        if (gVar != null) {
                            this.f7739l.j(gVar.f());
                            this.f7739l.i(gVar.e());
                            this.f7739l.g(gVar.c());
                            TextView textView = r1Var.f8685d;
                            h7.a aVar = h7.a.f7376a;
                            textView.setText(aVar.b(gVar.c()));
                            TextView textView2 = r1Var.f8687f;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append('(');
                            sb2.append(gVar.f());
                            sb2.append(')');
                            textView2.setText(sb2.toString());
                            TextView textView3 = r1Var.f8684c;
                            Context context = r1Var.b().getContext();
                            jc.l.e(context, "contentBinding.root.context");
                            textView3.setBackground(aVar.d(context, gVar.c()));
                        }
                        ImageView imageView3 = r1Var.f8683b;
                        jc.l.e(imageView3, "contentBinding.addRating");
                        imageView3.setVisibility(0);
                        ProgressBar progressBar4 = r1Var.f8688g;
                        jc.l.e(progressBar4, "contentBinding.progress");
                        progressBar4.setVisibility(8);
                        LinearLayout linearLayout4 = x.this.g0().f8291i.f8160b;
                        jc.l.e(linearLayout4, "binding.sectionContentRa…ng.contentRatingContainer");
                        childCount2 = linearLayout4.getChildCount();
                        if (childCount2 > 0) {
                            while (true) {
                                int i15 = i11 + 1;
                                View childAt3 = linearLayout4.getChildAt(i11);
                                jc.l.e(childAt3, "getChildAt(index)");
                                childAt3.setEnabled(true);
                                if (i15 >= childCount2) {
                                    break;
                                }
                                i11 = i15;
                            }
                        }
                        return vb.p.f15031a;
                    }
                    long j10 = this.f7737j;
                    String str = this.f7738k;
                    this.f7733f = a11;
                    this.f7734g = 1;
                    Object removeContentRating = n02.removeContentRating(j10, str, this);
                    if (removeContentRating == d10) {
                        return d10;
                    }
                    r1Var = a11;
                    obj = removeContentRating;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    r1Var = (r1) this.f7733f;
                    try {
                        vb.k.b(obj);
                    } catch (Exception e12) {
                        e10 = e12;
                        e10.printStackTrace();
                        ImageView imageView22 = r1Var.f8683b;
                        jc.l.e(imageView22, "contentBinding.addRating");
                        imageView22.setVisibility(8);
                        activity = x.this.getActivity();
                        if (activity == null) {
                            k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                        }
                        ProgressBar progressBar22 = r1Var.f8688g;
                        jc.l.e(progressBar22, "contentBinding.progress");
                        progressBar22.setVisibility(8);
                        LinearLayout linearLayout22 = x.this.g0().f8291i.f8160b;
                        jc.l.e(linearLayout22, "binding.sectionContentRa…ng.contentRatingContainer");
                        childCount = linearLayout22.getChildCount();
                        if (childCount > 0) {
                            while (true) {
                                int i16 = i11 + 1;
                                View childAt4 = linearLayout22.getChildAt(i11);
                                jc.l.e(childAt4, "getChildAt(index)");
                                childAt4.setEnabled(true);
                                if (i16 >= childCount) {
                                    break;
                                }
                                i11 = i16;
                            }
                        }
                        return vb.p.f15031a;
                    }
                }
                p4.l lVar = (p4.l) obj;
                if (lVar != null && (a10 = lVar.a()) != null) {
                    String str2 = this.f7738k;
                    Iterator<T> it2 = a10.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it2.next();
                        if (jc.l.a(((p4.g) obj2).a(), str2)) {
                            break;
                        }
                    }
                    gVar = (p4.g) obj2;
                    if (gVar != null) {
                    }
                    ImageView imageView32 = r1Var.f8683b;
                    jc.l.e(imageView32, "contentBinding.addRating");
                    imageView32.setVisibility(0);
                    ProgressBar progressBar42 = r1Var.f8688g;
                    jc.l.e(progressBar42, "contentBinding.progress");
                    progressBar42.setVisibility(8);
                    LinearLayout linearLayout42 = x.this.g0().f8291i.f8160b;
                    jc.l.e(linearLayout42, "binding.sectionContentRa…ng.contentRatingContainer");
                    childCount2 = linearLayout42.getChildCount();
                    if (childCount2 > 0) {
                    }
                    return vb.p.f15031a;
                }
                gVar = null;
                if (gVar != null) {
                }
                ImageView imageView322 = r1Var.f8683b;
                jc.l.e(imageView322, "contentBinding.addRating");
                imageView322.setVisibility(0);
                ProgressBar progressBar422 = r1Var.f8688g;
                jc.l.e(progressBar422, "contentBinding.progress");
                progressBar422.setVisibility(8);
                LinearLayout linearLayout422 = x.this.g0().f8291i.f8160b;
                jc.l.e(linearLayout422, "binding.sectionContentRa…ng.contentRatingContainer");
                childCount2 = linearLayout422.getChildCount();
                if (childCount2 > 0) {
                }
                return vb.p.f15031a;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Bundle f7741g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Bundle bundle) {
            super(1);
            this.f7741g = bundle;
        }

        public final void a(s2.c cVar) {
            bb.f<Boolean> h10;
            jc.l.f(cVar, "it");
            f4.d e10 = x.this.p().e();
            if (e10 != null && (h10 = e10.h()) != null) {
                h10.set(Boolean.FALSE);
            }
            Context context = x.this.getContext();
            Bundle bundle = this.f7741g;
            Intent intent = new Intent(context, (Class<?>) CommentActivity.class);
            intent.setFlags(268435456);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (context == null) {
                return;
            }
            context.startActivity(intent);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<i5.z> {
        public h() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final i5.z invoke() {
            return i5.z.f7797h.newInstance(x.this.getContext());
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<e7.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final i f7743f = new i();

        public i() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e7.d invoke() {
            return new e7.d();
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<SeriesEndpoint> {
        public j() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SeriesEndpoint invoke() {
            Context context = x.this.getContext();
            if (context == null) {
                return null;
            }
            return (SeriesEndpoint) z3.b.f17284d.getInstance(context).b(SeriesEndpoint.class);
        }
    }

    /* compiled from: Comparisons.kt */
    /* loaded from: classes.dex */
    public static final class k<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return yb.a.a(((p4.g) t11).a(), ((p4.g) t10).a());
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.a<vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ p4.p f7746g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(p4.p pVar) {
            super(0);
            this.f7746g = pVar;
        }

        public final void a() {
            new i5.b(x.this, this.f7746g.e()).show();
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.l<Integer, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ jc.u f7747f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ s2.c f7748g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ jc.v f7749h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7750i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7751j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7752k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ TextView f7753l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(jc.u uVar, s2.c cVar, jc.v vVar, IndicatorSeekBar indicatorSeekBar, IndicatorSeekBar indicatorSeekBar2, IndicatorSeekBar indicatorSeekBar3, TextView textView) {
            super(1);
            this.f7747f = uVar;
            this.f7748g = cVar;
            this.f7749h = vVar;
            this.f7750i = indicatorSeekBar;
            this.f7751j = indicatorSeekBar2;
            this.f7752k = indicatorSeekBar3;
            this.f7753l = textView;
        }

        public final void a(int i10) {
            this.f7747f.f9191f = true;
            t2.a.d(this.f7748g, s2.m.POSITIVE, true);
            this.f7749h.f9192f = (((this.f7750i.getProgress() + i10) + this.f7751j.getProgress()) + this.f7752k.getProgress()) / 4;
            this.f7753l.setText(String.valueOf(this.f7749h.f9192f));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Integer num) {
            a(num.intValue());
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class n extends jc.m implements ic.l<Integer, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ jc.u f7754f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ s2.c f7755g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ jc.v f7756h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7757i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7758j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7759k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ TextView f7760l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(jc.u uVar, s2.c cVar, jc.v vVar, IndicatorSeekBar indicatorSeekBar, IndicatorSeekBar indicatorSeekBar2, IndicatorSeekBar indicatorSeekBar3, TextView textView) {
            super(1);
            this.f7754f = uVar;
            this.f7755g = cVar;
            this.f7756h = vVar;
            this.f7757i = indicatorSeekBar;
            this.f7758j = indicatorSeekBar2;
            this.f7759k = indicatorSeekBar3;
            this.f7760l = textView;
        }

        public final void a(int i10) {
            this.f7754f.f9191f = true;
            t2.a.d(this.f7755g, s2.m.POSITIVE, true);
            this.f7756h.f9192f = (((this.f7757i.getProgress() + i10) + this.f7758j.getProgress()) + this.f7759k.getProgress()) / 4;
            this.f7760l.setText(String.valueOf(this.f7756h.f9192f));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Integer num) {
            a(num.intValue());
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class o extends jc.m implements ic.l<Integer, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ jc.u f7761f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ s2.c f7762g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ jc.v f7763h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7764i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7765j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7766k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ TextView f7767l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(jc.u uVar, s2.c cVar, jc.v vVar, IndicatorSeekBar indicatorSeekBar, IndicatorSeekBar indicatorSeekBar2, IndicatorSeekBar indicatorSeekBar3, TextView textView) {
            super(1);
            this.f7761f = uVar;
            this.f7762g = cVar;
            this.f7763h = vVar;
            this.f7764i = indicatorSeekBar;
            this.f7765j = indicatorSeekBar2;
            this.f7766k = indicatorSeekBar3;
            this.f7767l = textView;
        }

        public final void a(int i10) {
            this.f7761f.f9191f = true;
            t2.a.d(this.f7762g, s2.m.POSITIVE, true);
            this.f7763h.f9192f = (((this.f7764i.getProgress() + i10) + this.f7765j.getProgress()) + this.f7766k.getProgress()) / 4;
            this.f7767l.setText(String.valueOf(this.f7763h.f9192f));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Integer num) {
            a(num.intValue());
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class p extends jc.m implements ic.l<Integer, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ jc.u f7768f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ s2.c f7769g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ jc.v f7770h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7771i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7772j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7773k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ TextView f7774l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(jc.u uVar, s2.c cVar, jc.v vVar, IndicatorSeekBar indicatorSeekBar, IndicatorSeekBar indicatorSeekBar2, IndicatorSeekBar indicatorSeekBar3, TextView textView) {
            super(1);
            this.f7768f = uVar;
            this.f7769g = cVar;
            this.f7770h = vVar;
            this.f7771i = indicatorSeekBar;
            this.f7772j = indicatorSeekBar2;
            this.f7773k = indicatorSeekBar3;
            this.f7774l = textView;
        }

        public final void a(int i10) {
            this.f7768f.f9191f = true;
            t2.a.d(this.f7769g, s2.m.POSITIVE, true);
            this.f7770h.f9192f = (((this.f7771i.getProgress() + i10) + this.f7772j.getProgress()) + this.f7773k.getProgress()) / 4;
            this.f7774l.setText(String.valueOf(this.f7770h.f9192f));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Integer num) {
            a(num.intValue());
            return vb.p.f15031a;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class q extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ p4.p f7776g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7777h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7778i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7779j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7780k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ jc.v f7781l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(p4.p pVar, IndicatorSeekBar indicatorSeekBar, IndicatorSeekBar indicatorSeekBar2, IndicatorSeekBar indicatorSeekBar3, IndicatorSeekBar indicatorSeekBar4, jc.v vVar) {
            super(1);
            this.f7776g = pVar;
            this.f7777h = indicatorSeekBar;
            this.f7778i = indicatorSeekBar2;
            this.f7779j = indicatorSeekBar3;
            this.f7780k = indicatorSeekBar4;
            this.f7781l = vVar;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            ProgressBar progressBar = x.this.g0().f8284b.f8261j.f8318v;
            jc.l.e(progressBar, "binding.animeOverviewSec…Section.yourRatingLoading");
            progressBar.setVisibility(0);
            this.f7776g.w0(Integer.valueOf(this.f7777h.getProgress()));
            this.f7776g.s0(Integer.valueOf(this.f7778i.getProgress()));
            this.f7776g.t0(Integer.valueOf(this.f7779j.getProgress()));
            this.f7776g.v0(Integer.valueOf(this.f7780k.getProgress()));
            this.f7776g.p0(String.valueOf(this.f7781l.f9192f));
            x xVar = x.this;
            a.C0058a c0058a = new a.C0058a();
            p4.p pVar = this.f7776g;
            jc.v vVar = this.f7781l;
            IndicatorSeekBar indicatorSeekBar = this.f7777h;
            IndicatorSeekBar indicatorSeekBar2 = this.f7778i;
            IndicatorSeekBar indicatorSeekBar3 = this.f7779j;
            IndicatorSeekBar indicatorSeekBar4 = this.f7780k;
            c0058a.g("anime_ids", String.valueOf(pVar.m()));
            c0058a.e("anime_rating", vVar.f9192f);
            c0058a.e("story_rating", indicatorSeekBar.getProgress());
            c0058a.e("art_rating", indicatorSeekBar2.getProgress());
            c0058a.e("characters_rating", indicatorSeekBar3.getProgress());
            c0058a.e("ost_rating", indicatorSeekBar4.getProgress());
            c0058a.g("arg_request_type", "ADD_SERIES_RATING");
            androidx.work.a a10 = c0058a.a();
            jc.l.e(a10, "Builder().apply {\n      …                }.build()");
            xVar.r0(a10);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: TextView.kt */
    /* loaded from: classes.dex */
    public static final class r implements TextWatcher {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7782f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7783g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7784h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ IndicatorSeekBar f7785i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ s2.c f7786j;

        public r(IndicatorSeekBar indicatorSeekBar, IndicatorSeekBar indicatorSeekBar2, IndicatorSeekBar indicatorSeekBar3, IndicatorSeekBar indicatorSeekBar4, s2.c cVar) {
            this.f7782f = indicatorSeekBar;
            this.f7783g = indicatorSeekBar2;
            this.f7784h = indicatorSeekBar3;
            this.f7785i = indicatorSeekBar4;
            this.f7786j = cVar;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            t2.a.d(this.f7786j, s2.m.POSITIVE, this.f7782f.getProgress() >= 1 && this.f7783g.getProgress() >= 1 && this.f7784h.getProgress() >= 1 && this.f7785i.getProgress() >= 1);
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class s extends jc.m implements ic.l<p4.r, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.e f7788g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(androidx.fragment.app.e eVar) {
            super(1);
            this.f7788g = eVar;
        }

        public final void a(p4.r rVar) {
            jc.l.f(rVar, "contributor");
            if (x.this.p0() == rVar.e() && x.this.k0().b()) {
                x.this.startActivity(ProfileActivity.f4249l.a(this.f7788g));
            } else {
                x.this.startActivity(PeopleProfileActivity.f4248l.a(this.f7788g, rVar.e()));
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(p4.r rVar) {
            a(rVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class t extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final t f7789f = new t();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public t() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class u extends jc.m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final u f7790f = new u();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public u() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class v extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f7791f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(Fragment fragment) {
            super(0);
            this.f7791f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f7791f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class w extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f7792f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(ic.a aVar) {
            super(0);
            this.f7792f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f7792f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* renamed from: i5.x$x, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0152x extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f7793f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0152x(Fragment fragment) {
            super(0);
            this.f7793f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f7793f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class y extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f7794f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public y(ic.a aVar) {
            super(0);
            this.f7794f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f7794f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: SeriesFragment.kt */
    /* loaded from: classes.dex */
    public static final class z extends jc.m implements ic.a<l0.b> {
        public z() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = x.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new b0.a(requireActivity, x.this);
        }
    }

    public static final void B0(x xVar, p4.g gVar, p4.p pVar, int i10, View view) {
        jc.l.f(xVar, "this$0");
        jc.l.f(gVar, "$contentRating");
        jc.l.f(pVar, "$model");
        if (xVar.k0().b()) {
            i5.e eVar = xVar.f7707s;
            if (eVar != null) {
                eVar.i(gVar, pVar.m(), i10);
            }
            i5.e eVar2 = xVar.f7707s;
            if (eVar2 == null) {
                return;
            }
            eVar2.show();
        }
    }

    public static final void D0(d2 d2Var, x xVar, View view) {
        jc.l.f(d2Var, "$this_with");
        jc.l.f(xVar, "this$0");
        if (d2Var.f8260i.getDrawable() != null) {
            SlayerImage slayerImage = d2Var.f8260i;
            jc.l.e(slayerImage, "seriesImage");
            xVar.T0(slayerImage);
        }
    }

    public static final void E0(d2 d2Var, final p4.p pVar) {
        jc.l.f(d2Var, "$this_with");
        jc.l.f(pVar, "$model");
        Layout layout = d2Var.f8263l.getLayout();
        int lineCount = layout == null ? 0 : layout.getLineCount();
        if (lineCount <= 0 || layout.getEllipsisCount(lineCount - 1) <= 0) {
            return;
        }
        d2Var.f8263l.setOnClickListener(new View.OnClickListener() { // from class: i5.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                x.F0(p4.p.this, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void F0(p4.p pVar, View view) {
        jc.l.f(pVar, "$model");
        Context context = view.getContext();
        jc.l.e(context, "it.context");
        s2.c.n(new s2.c(context, null, 2, 0 == true ? 1 : 0), null, pVar.n(), null, 5, null).show();
    }

    public static final boolean G0(x xVar, d2 d2Var, View view) {
        jc.l.f(xVar, "this$0");
        jc.l.f(d2Var, "$this_with");
        androidx.fragment.app.e activity = xVar.getActivity();
        if (activity == null) {
            return true;
        }
        k7.b.c(activity, d2Var.f8263l.getText().toString(), d2Var.f8263l.getText().toString());
        return true;
    }

    public static final void I0(x xVar, p4.p pVar, View view) {
        jc.l.f(xVar, "this$0");
        jc.l.f(pVar, "$model");
        f4.d e10 = xVar.p().e();
        if ((e10 == null || e10.b()) ? false : true) {
            androidx.fragment.app.e activity = xVar.getActivity();
            if (activity == null) {
                return;
            }
            k7.b.q(activity, R.string.text_login_required, 0, 2, null);
            return;
        }
        xVar.N0(pVar);
    }

    public static final void L0(View view, r4.d dVar, View view2) {
        jc.l.f(view, "$view");
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        k7.b.l(context, dVar.c());
    }

    public static final void Q0(x xVar, View view) {
        jc.l.f(xVar, "this$0");
        f4.d e10 = xVar.p().e();
        if ((e10 == null || e10.b()) ? false : true) {
            androidx.fragment.app.e activity = xVar.getActivity();
            if (activity == null) {
                return;
            }
            k7.b.q(activity, R.string.text_login_required, 0, 2, null);
            return;
        }
        l0 l0Var = xVar.f7706r;
        if (l0Var == null) {
            return;
        }
        l0Var.show();
    }

    public static final void R0(View view, String str, String str2, x xVar, View view2) {
        jc.l.f(view, "$view");
        jc.l.f(str2, "$thumbnailUrl");
        jc.l.f(xVar, "this$0");
        try {
            FullscreenVideoActivity.a aVar = FullscreenVideoActivity.f4163g;
            Context context = view.getContext();
            jc.l.e(context, "view.context");
            Intent a10 = aVar.a(context, str, str2);
            Context context2 = view.getContext();
            jc.l.e(context2, "view.context");
            jc.l.e(view2, "it");
            k7.b.n(context2, a10, view2);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                Uri parse = Uri.parse(jc.l.m("http://www.youtube.com/watch?v=", str));
                jc.l.e(parse, "parse(this)");
                xVar.startActivity(new Intent("android.intent.action.VIEW", parse));
            } catch (Exception unused) {
            }
        }
    }

    public static final void S0(x xVar, View view) {
        jc.l.f(xVar, "this$0");
        xVar.P0();
    }

    public static final void U0(View view, ImageView imageView, SlayerImage slayerImage, View view2) {
        jc.l.f(view, "$fullBackdrop");
        jc.l.f(imageView, "$thumbView");
        jc.l.f(slayerImage, "$expandedImageView");
        view.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        imageView.setAlpha(1.0f);
        slayerImage.setVisibility(8);
        view.setVisibility(8);
    }

    public static final void s0(x xVar, d2.u uVar) {
        jc.l.f(xVar, "this$0");
        u.a a10 = uVar == null ? null : uVar.a();
        int i10 = a10 == null ? -1 : b.f7717a[a10.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                xVar.toString();
                return;
            }
            ProgressBar progressBar = xVar.g0().f8284b.f8261j.f8318v;
            jc.l.e(progressBar, "binding.animeOverviewSec…Section.yourRatingLoading");
            progressBar.setVisibility(8);
            androidx.fragment.app.e activity = xVar.getActivity();
            if (activity == null) {
                return;
            }
            k7.b.q(activity, R.string.text_request_error, 0, 2, null);
            return;
        }
        ProgressBar progressBar2 = xVar.g0().f8284b.f8261j.f8318v;
        jc.l.e(progressBar2, "binding.animeOverviewSec…Section.yourRatingLoading");
        progressBar2.setVisibility(8);
        u0.f.c(xVar.g0().f8284b.f8261j.f8310n, null);
        xVar.g0().f8284b.f8261j.f8310n.setImageResource(R.drawable.rating_star_user);
        TextView textView = xVar.g0().f8284b.f8261j.f8309m;
        jc.l.e(textView, "binding.animeOverviewSec…iesRatingSection.rateThis");
        textView.setVisibility(8);
        LinearLayout linearLayout = xVar.g0().f8284b.f8261j.f8317u;
        jc.l.e(linearLayout, "binding.animeOverviewSec…tion.yourRatingLabelGroup");
        linearLayout.setVisibility(0);
        TextView textView2 = xVar.g0().f8284b.f8261j.f8314r;
        p4.p modelData = xVar.o0().getModelData();
        textView2.setText(modelData != null ? modelData.r() : null);
        TextView textView3 = xVar.g0().f8284b.f8261j.f8315s;
        jc.l.e(textView3, "binding.animeOverviewSec…Section.yourRatingCaption");
        textView3.setVisibility(0);
    }

    public static final void u0(x xVar, View view) {
        jc.l.f(xVar, "this$0");
        ProgressLayout progressLayout = xVar.g0().f8289g;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showContentLoading(progressLayout);
        xVar.e();
    }

    public static final void v0(x xVar, View view) {
        jc.l.f(xVar, "this$0");
        androidx.fragment.app.e activity = xVar.getActivity();
        if (activity == null) {
            return;
        }
        xVar.startActivity(WebViewActivity.f4369r.b(activity, xVar.requireArguments().getLong("anime_id")));
    }

    public static final void w0(View view, g7.c cVar) {
        jc.l.f(view, "$view");
        if (cVar == null) {
            return;
        }
        if (!(cVar instanceof c.C0133c)) {
            boolean z10 = cVar instanceof c.a;
            return;
        }
        Context context = view.getContext();
        jc.l.e(context, "view.context");
        k7.b.r(context, "تم حفظ الصورة", 0, 2, null);
    }

    @Override // i5.l0.a
    public void A(p4.p pVar, boolean z10) {
        jc.l.f(pVar, "anime");
        if (z10) {
            Context context = g0().f8284b.f8261j.f8313q.getContext();
            TextView textView = g0().f8284b.f8261j.f8313q;
            jc.l.e(textView, "binding.animeOverviewSec…sRatingSection.trackTitle");
            textView.setVisibility(0);
            g0().f8284b.f8261j.f8313q.setText(context.getString(R.string.watched));
            g0().f8284b.f8261j.f8312p.setImageResource(R.drawable.ic_baseline_play_circle_filled_24);
            return;
        }
        M0(pVar);
    }

    public final void A0(View view, final p4.p pVar) {
        if (pVar.g0()) {
            MaterialCardView b10 = g0().f8291i.b();
            jc.l.e(b10, "binding.sectionContentRating.root");
            b10.setVisibility(8);
            g0().f8291i.f8160b.removeAllViews();
            return;
        }
        g0().f8291i.f8160b.removeAllViews();
        List<p4.g> C2 = pVar.C();
        List L = C2 == null ? null : wb.t.L(C2, new k());
        if (L == null) {
            return;
        }
        final int i10 = 0;
        for (Object obj : L) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                wb.l.p();
            }
            final p4.g gVar = (p4.g) obj;
            View inflate = LayoutInflater.from(view.getContext()).inflate(R.layout.row_content_rating, (ViewGroup) null);
            r1 a10 = r1.a(inflate);
            jc.l.e(a10, "bind(inflatedView)");
            h7.a aVar = h7.a.f7376a;
            Context context = view.getContext();
            jc.l.e(context, "view.context");
            Drawable d10 = aVar.d(context, gVar.c());
            String b11 = aVar.b(gVar.c());
            String a11 = aVar.a(gVar.a());
            a10.f8684c.setBackground(d10);
            a10.f8686e.setText(a11);
            a10.f8685d.setText(b11);
            TextView textView = a10.f8687f;
            StringBuilder sb2 = new StringBuilder();
            sb2.append('(');
            sb2.append(gVar.f());
            sb2.append(')');
            textView.setText(sb2.toString());
            ImageView imageView = a10.f8683b;
            jc.l.e(imageView, "rowBinding.addRating");
            imageView.setVisibility(k0().b() && (jc.l.a(gVar.e(), "empty") || gVar.e() == null) ? 0 : 8);
            a10.b().setOnClickListener(new View.OnClickListener() { // from class: i5.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    x.B0(x.this, gVar, pVar, i10, view2);
                }
            });
            g0().f8291i.f8160b.addView(inflate);
            i10 = i11;
        }
    }

    public final void C0(View view, final p4.p pVar) {
        int colorFromAttr;
        String c10;
        final d2 d2Var = g0().f8284b;
        if (Build.VERSION.SDK_INT >= 21) {
            Context context = view.getContext();
            jc.l.e(context, "view.context");
            colorFromAttr = SupportExtentionKt.getColorFromAttr(context, android.R.attr.colorBackground);
        } else {
            Context context2 = view.getContext();
            jc.l.e(context2, "view.context");
            colorFromAttr = SupportExtentionKt.getColorFromAttr(context2, android.R.attr.windowBackground);
        }
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{colorFromAttr, Color.parseColor("#00ffffff")});
        gradientDrawable.setCornerRadius(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        d2Var.f8256e.setBackground(gradientDrawable);
        SlayerImage slayerImage = d2Var.f8260i;
        jc.l.e(slayerImage, "seriesImage");
        l7.p.f(slayerImage, 0, 1, null);
        d4.c<Drawable> s10 = d4.a.a(view.getContext()).s(pVar.e());
        r7.j jVar = r7.j.f12975d;
        d4.c<Drawable> G0 = s10.g(jVar).G0();
        SlayerImage slayerImage2 = d2Var.f8260i;
        jc.l.e(slayerImage2, "seriesImage");
        G0.r0(new i5.g(slayerImage2, new l(pVar)));
        String c11 = pVar.c();
        if (c11 == null || c11.length() == 0) {
            c10 = pVar.e();
        } else {
            c10 = pVar.c();
        }
        d4.a.a(view.getContext()).s(c10).g(jVar).G0().u0(d2Var.f8255d);
        d2Var.f8260i.setOnClickListener(new View.OnClickListener() { // from class: i5.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                x.D0(d2.this, this, view2);
            }
        });
        d2Var.f8263l.setText(pVar.n());
        d2Var.f8263l.post(new Runnable() { // from class: i5.n
            @Override // java.lang.Runnable
            public final void run() {
                x.E0(d2.this, pVar);
            }
        });
        d2Var.f8263l.setOnLongClickListener(new View.OnLongClickListener() { // from class: i5.k
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean G02;
                G02 = x.G0(x.this, d2Var, view2);
                return G02;
            }
        });
        d2Var.f8262k.setText(pVar.b0());
        d2Var.f8265n.setText(pVar.k0());
        TextView textView = d2Var.f8265n;
        jc.l.e(textView, "seriesYear");
        String t10 = pVar.t();
        textView.setVisibility(t10 == null || t10.length() == 0 ? 8 : 0);
        p4.m J = pVar.J();
        String j10 = J != null ? J.j() : null;
        d2Var.f8264m.setText(pVar.c0());
        if (jc.l.a(pVar.v(), "Movie") && j10 != null) {
            if (jc.l.a(qc.u.t0(j10).toString(), DiskLruCache.VERSION_1)) {
                TextView textView2 = d2Var.f8257f;
                jc.l.e(textView2, "episodeNumber");
                textView2.setVisibility(8);
                View view2 = d2Var.f8258g;
                jc.l.e(view2, "epsiodeNumberSperator");
                view2.setVisibility(8);
            } else {
                TextView textView3 = d2Var.f8257f;
                jc.l.e(textView3, "episodeNumber");
                textView3.setVisibility(0);
                View view3 = d2Var.f8258g;
                jc.l.e(view3, "epsiodeNumberSperator");
                view3.setVisibility(0);
            }
        } else {
            TextView textView4 = d2Var.f8257f;
            jc.l.e(textView4, "episodeNumber");
            textView4.setVisibility(j10 != null ? 0 : 8);
            View view4 = d2Var.f8258g;
            jc.l.e(view4, "epsiodeNumberSperator");
            view4.setVisibility(j10 != null ? 0 : 8);
        }
        d2Var.f8257f.setText(jc.l.m(j10, " حلقة"));
        d2Var.f8259h.setText(pVar.Y());
        TextView textView5 = d2Var.f8259h;
        jc.l.e(textView5, "seriesAgeRating");
        String a10 = pVar.a();
        textView5.setVisibility((a10 == null || a10.length() == 0) ^ true ? 0 : 8);
        View view5 = d2Var.f8253b;
        jc.l.e(view5, "ageRatingSeperator");
        String a11 = pVar.a();
        view5.setVisibility((a11 == null || a11.length() == 0) ^ true ? 0 : 8);
    }

    @Override // i5.l0.a
    public void D(p4.p pVar, boolean z10) {
        jc.l.f(pVar, "anime");
        if (z10) {
            Context context = g0().f8284b.f8261j.f8313q.getContext();
            TextView textView = g0().f8284b.f8261j.f8313q;
            jc.l.e(textView, "binding.animeOverviewSec…sRatingSection.trackTitle");
            textView.setVisibility(0);
            g0().f8284b.f8261j.f8313q.setText(context.getString(R.string.currently_watching));
            g0().f8284b.f8261j.f8312p.setImageResource(R.drawable.ic_baseline_play_circle_outline_24);
            return;
        }
        M0(pVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void H0(final p4.p pVar) {
        boolean z10;
        Float i10;
        Integer j10;
        String l10;
        Float i11;
        String m10;
        Integer j11;
        String r10;
        Float i12;
        e2 e2Var = g0().f8284b.f8261j;
        LinearLayout linearLayout = e2Var.f8305i;
        jc.l.e(linearLayout, "malRatingGroup");
        if (!pVar.g0()) {
            p4.m J = pVar.J();
            if ((J == null ? null : J.l()) != null) {
                z10 = true;
                linearLayout.setVisibility(!z10 ? 0 : 8);
                LinearLayout linearLayout2 = e2Var.f8316t;
                jc.l.e(linearLayout2, "yourRatingGroup");
                linearLayout2.setVisibility(!(pVar.g0() ^ true) ? 0 : 8);
                TextView textView = e2Var.f8299c;
                Locale locale = Locale.US;
                Object[] objArr = new Object[1];
                String q10 = pVar.q();
                objArr[0] = Float.valueOf((q10 == null || (i10 = qc.r.i(q10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i10.floatValue());
                String format = String.format(locale, "%.2f", Arrays.copyOf(objArr, 1));
                jc.l.e(format, "format(locale, this, *args)");
                textView.setText(format);
                TextView textView2 = e2Var.f8307k;
                Object[] objArr2 = new Object[1];
                String s10 = pVar.s();
                objArr2[0] = Integer.valueOf((s10 == null || (j10 = qc.s.j(s10)) == null) ? 0 : j10.intValue());
                String format2 = String.format(locale, "%,d", Arrays.copyOf(objArr2, 1));
                jc.l.e(format2, "format(locale, this, *args)");
                textView2.setText(format2);
                TextView textView3 = e2Var.f8303g;
                Object[] objArr3 = new Object[1];
                p4.m J2 = pVar.J();
                objArr3[0] = Float.valueOf((J2 == null || (l10 = J2.l()) == null || (i11 = qc.r.i(l10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i11.floatValue());
                String format3 = String.format(locale, "%.2f", Arrays.copyOf(objArr3, 1));
                jc.l.e(format3, "format(locale, this, *args)");
                textView3.setText(format3);
                TextView textView4 = e2Var.f8308l;
                Object[] objArr4 = new Object[1];
                p4.m J3 = pVar.J();
                objArr4[0] = Integer.valueOf((J3 == null || (m10 = J3.m()) == null || (j11 = qc.s.j(m10)) == null) ? 0 : j11.intValue());
                String format4 = String.format(locale, "%,d", Arrays.copyOf(objArr4, 1));
                jc.l.e(format4, "format(locale, this, *args)");
                textView4.setText(format4);
                r10 = pVar.r();
                if (((r10 == null || (i12 = qc.r.i(r10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i12.floatValue()) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    u0.f.c(e2Var.f8310n, null);
                    e2Var.f8310n.setImageResource(R.drawable.rating_star_user);
                    TextView textView5 = e2Var.f8309m;
                    jc.l.e(textView5, "rateThis");
                    textView5.setVisibility(8);
                    LinearLayout linearLayout3 = e2Var.f8317u;
                    jc.l.e(linearLayout3, "yourRatingLabelGroup");
                    linearLayout3.setVisibility(0);
                    e2Var.f8314r.setText(pVar.r());
                    TextView textView6 = e2Var.f8315s;
                    jc.l.e(textView6, "yourRatingCaption");
                    textView6.setVisibility(0);
                }
                e2Var.f8316t.setOnClickListener(new View.OnClickListener() { // from class: i5.v
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        x.I0(x.this, pVar, view);
                    }
                });
            }
        }
        z10 = false;
        linearLayout.setVisibility(!z10 ? 0 : 8);
        LinearLayout linearLayout22 = e2Var.f8316t;
        jc.l.e(linearLayout22, "yourRatingGroup");
        linearLayout22.setVisibility(!(pVar.g0() ^ true) ? 0 : 8);
        TextView textView7 = e2Var.f8299c;
        Locale locale2 = Locale.US;
        Object[] objArr5 = new Object[1];
        String q102 = pVar.q();
        if (q102 == null) {
            objArr5[0] = Float.valueOf((q102 == null || (i10 = qc.r.i(q102)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i10.floatValue());
            String format5 = String.format(locale2, "%.2f", Arrays.copyOf(objArr5, 1));
            jc.l.e(format5, "format(locale, this, *args)");
            textView7.setText(format5);
            TextView textView22 = e2Var.f8307k;
            Object[] objArr22 = new Object[1];
            String s102 = pVar.s();
            if (s102 == null) {
                objArr22[0] = Integer.valueOf((s102 == null || (j10 = qc.s.j(s102)) == null) ? 0 : j10.intValue());
                String format22 = String.format(locale2, "%,d", Arrays.copyOf(objArr22, 1));
                jc.l.e(format22, "format(locale, this, *args)");
                textView22.setText(format22);
                TextView textView32 = e2Var.f8303g;
                Object[] objArr32 = new Object[1];
                p4.m J22 = pVar.J();
                if (J22 == null) {
                    objArr32[0] = Float.valueOf((J22 == null || (l10 = J22.l()) == null || (i11 = qc.r.i(l10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i11.floatValue());
                    String format32 = String.format(locale2, "%.2f", Arrays.copyOf(objArr32, 1));
                    jc.l.e(format32, "format(locale, this, *args)");
                    textView32.setText(format32);
                    TextView textView42 = e2Var.f8308l;
                    Object[] objArr42 = new Object[1];
                    p4.m J32 = pVar.J();
                    if (J32 == null) {
                        objArr42[0] = Integer.valueOf((J32 == null || (m10 = J32.m()) == null || (j11 = qc.s.j(m10)) == null) ? 0 : j11.intValue());
                        String format42 = String.format(locale2, "%,d", Arrays.copyOf(objArr42, 1));
                        jc.l.e(format42, "format(locale, this, *args)");
                        textView42.setText(format42);
                        r10 = pVar.r();
                        if (r10 == null) {
                            if (((r10 == null || (i12 = qc.r.i(r10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i12.floatValue()) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            }
                            e2Var.f8316t.setOnClickListener(new View.OnClickListener() { // from class: i5.v
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    x.I0(x.this, pVar, view);
                                }
                            });
                        }
                        if (((r10 == null || (i12 = qc.r.i(r10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i12.floatValue()) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        }
                        e2Var.f8316t.setOnClickListener(new View.OnClickListener() { // from class: i5.v
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                x.I0(x.this, pVar, view);
                            }
                        });
                    }
                    objArr42[0] = Integer.valueOf((J32 == null || (m10 = J32.m()) == null || (j11 = qc.s.j(m10)) == null) ? 0 : j11.intValue());
                    String format422 = String.format(locale2, "%,d", Arrays.copyOf(objArr42, 1));
                    jc.l.e(format422, "format(locale, this, *args)");
                    textView42.setText(format422);
                    r10 = pVar.r();
                    if (((r10 == null || (i12 = qc.r.i(r10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i12.floatValue()) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    }
                    e2Var.f8316t.setOnClickListener(new View.OnClickListener() { // from class: i5.v
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            x.I0(x.this, pVar, view);
                        }
                    });
                }
                objArr32[0] = Float.valueOf((J22 == null || (l10 = J22.l()) == null || (i11 = qc.r.i(l10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i11.floatValue());
                String format322 = String.format(locale2, "%.2f", Arrays.copyOf(objArr32, 1));
                jc.l.e(format322, "format(locale, this, *args)");
                textView32.setText(format322);
                TextView textView422 = e2Var.f8308l;
                Object[] objArr422 = new Object[1];
                p4.m J322 = pVar.J();
                objArr422[0] = Integer.valueOf((J322 == null || (m10 = J322.m()) == null || (j11 = qc.s.j(m10)) == null) ? 0 : j11.intValue());
                String format4222 = String.format(locale2, "%,d", Arrays.copyOf(objArr422, 1));
                jc.l.e(format4222, "format(locale, this, *args)");
                textView422.setText(format4222);
                r10 = pVar.r();
                if (((r10 == null || (i12 = qc.r.i(r10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i12.floatValue()) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                }
                e2Var.f8316t.setOnClickListener(new View.OnClickListener() { // from class: i5.v
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        x.I0(x.this, pVar, view);
                    }
                });
            }
            objArr22[0] = Integer.valueOf((s102 == null || (j10 = qc.s.j(s102)) == null) ? 0 : j10.intValue());
            String format222 = String.format(locale2, "%,d", Arrays.copyOf(objArr22, 1));
            jc.l.e(format222, "format(locale, this, *args)");
            textView22.setText(format222);
            TextView textView322 = e2Var.f8303g;
            Object[] objArr322 = new Object[1];
            p4.m J222 = pVar.J();
            objArr322[0] = Float.valueOf((J222 == null || (l10 = J222.l()) == null || (i11 = qc.r.i(l10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i11.floatValue());
            String format3222 = String.format(locale2, "%.2f", Arrays.copyOf(objArr322, 1));
            jc.l.e(format3222, "format(locale, this, *args)");
            textView322.setText(format3222);
            TextView textView4222 = e2Var.f8308l;
            Object[] objArr4222 = new Object[1];
            p4.m J3222 = pVar.J();
            objArr4222[0] = Integer.valueOf((J3222 == null || (m10 = J3222.m()) == null || (j11 = qc.s.j(m10)) == null) ? 0 : j11.intValue());
            String format42222 = String.format(locale2, "%,d", Arrays.copyOf(objArr4222, 1));
            jc.l.e(format42222, "format(locale, this, *args)");
            textView4222.setText(format42222);
            r10 = pVar.r();
            if (((r10 == null || (i12 = qc.r.i(r10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i12.floatValue()) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            }
            e2Var.f8316t.setOnClickListener(new View.OnClickListener() { // from class: i5.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    x.I0(x.this, pVar, view);
                }
            });
        }
        objArr5[0] = Float.valueOf((q102 == null || (i10 = qc.r.i(q102)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i10.floatValue());
        String format52 = String.format(locale2, "%.2f", Arrays.copyOf(objArr5, 1));
        jc.l.e(format52, "format(locale, this, *args)");
        textView7.setText(format52);
        TextView textView222 = e2Var.f8307k;
        Object[] objArr222 = new Object[1];
        String s1022 = pVar.s();
        objArr222[0] = Integer.valueOf((s1022 == null || (j10 = qc.s.j(s1022)) == null) ? 0 : j10.intValue());
        String format2222 = String.format(locale2, "%,d", Arrays.copyOf(objArr222, 1));
        jc.l.e(format2222, "format(locale, this, *args)");
        textView222.setText(format2222);
        TextView textView3222 = e2Var.f8303g;
        Object[] objArr3222 = new Object[1];
        p4.m J2222 = pVar.J();
        objArr3222[0] = Float.valueOf((J2222 == null || (l10 = J2222.l()) == null || (i11 = qc.r.i(l10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i11.floatValue());
        String format32222 = String.format(locale2, "%.2f", Arrays.copyOf(objArr3222, 1));
        jc.l.e(format32222, "format(locale, this, *args)");
        textView3222.setText(format32222);
        TextView textView42222 = e2Var.f8308l;
        Object[] objArr42222 = new Object[1];
        p4.m J32222 = pVar.J();
        objArr42222[0] = Integer.valueOf((J32222 == null || (m10 = J32222.m()) == null || (j11 = qc.s.j(m10)) == null) ? 0 : j11.intValue());
        String format422222 = String.format(locale2, "%,d", Arrays.copyOf(objArr42222, 1));
        jc.l.e(format422222, "format(locale, this, *args)");
        textView42222.setText(format422222);
        r10 = pVar.r();
        if (((r10 == null || (i12 = qc.r.i(r10)) == null) ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : i12.floatValue()) > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
        }
        e2Var.f8316t.setOnClickListener(new View.OnClickListener() { // from class: i5.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                x.I0(x.this, pVar, view);
            }
        });
    }

    public final void J0(e1 e1Var) {
        this.f7700l.a(this, C[0], e1Var);
    }

    public final void K0(final View view, p4.p pVar) {
        r4.a a10;
        r4.b f02 = f0();
        final r4.d dVar = null;
        if (f02 != null && (a10 = f02.a()) != null) {
            dVar = a10.a();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            g0().f8290h.f8139c.setClipToOutline(true);
        }
        if (dVar != null) {
            d4.a.b(g0().f8290h.f8139c).s(dVar.a()).u0(g0().f8290h.f8139c);
            g0().f8290h.f8139c.setEnabled(dVar.c().length() > 0);
            g0().f8290h.f8139c.setOnClickListener(new View.OnClickListener() { // from class: i5.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    x.L0(view, dVar, view2);
                }
            });
        }
        ConstraintLayout b10 = g0().f8290h.b();
        jc.l.e(b10, "binding.sectionAd.root");
        b10.setVisibility(dVar != null ? 0 : 8);
    }

    public final void M0(p4.p pVar) {
        Context context = g0().f8284b.f8261j.f8313q.getContext();
        TextView textView = g0().f8284b.f8261j.f8313q;
        jc.l.e(textView, "binding.animeOverviewSec…sRatingSection.trackTitle");
        ImageView imageView = g0().f8284b.f8261j.f8312p;
        jc.l.e(imageView, "binding.animeOverviewSec…esRatingSection.trackIcon");
        if (jc.l.a(pVar.p(), "Yes")) {
            textView.setVisibility(0);
            textView.setText(context.getString(R.string.plan_to_watch));
            imageView.setImageResource(R.drawable.ic_baseline_add_to_queue_24);
            return;
        }
        if (jc.l.a(pVar.y(), "Yes")) {
            textView.setVisibility(0);
            textView.setText(context.getString(R.string.currently_watching));
            imageView.setImageResource(R.drawable.ic_baseline_play_circle_outline_24);
            return;
        }
        if (jc.l.a(pVar.w(), "Yes")) {
            textView.setVisibility(0);
            textView.setText(context.getString(R.string.watched));
            imageView.setImageResource(R.drawable.ic_baseline_play_circle_filled_24);
        } else if (jc.l.a(pVar.g(), "Yes")) {
            textView.setVisibility(0);
            textView.setText(context.getString(R.string.dropped));
            imageView.setImageResource(R.drawable.ic_baseline_remove_from_queue_24);
        } else if (jc.l.a(pVar.o(), "Yes")) {
            textView.setVisibility(0);
            textView.setText(context.getString(R.string.on_hold));
            imageView.setImageResource(R.drawable.ic_baseline_pause_presentation_24);
        } else {
            textView.setVisibility(8);
            imageView.setImageResource(R.drawable.ic_baseline_add_24);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void N0(p4.p pVar) {
        x xVar;
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        if (this.f7705q == null) {
            s2.c cVar = new s2.c(activity, null, 2, 0 == true ? 1 : 0);
            w2.a.b(cVar, Integer.valueOf(R.layout.rating_dialog), null, false, true, false, false, 54, null);
            jc.v vVar = new jc.v();
            jc.u uVar = new jc.u();
            IndicatorSeekBar indicatorSeekBar = (IndicatorSeekBar) w2.a.c(cVar).findViewById(R.id.story_rating);
            IndicatorSeekBar indicatorSeekBar2 = (IndicatorSeekBar) w2.a.c(cVar).findViewById(R.id.charachater_rating);
            IndicatorSeekBar indicatorSeekBar3 = (IndicatorSeekBar) w2.a.c(cVar).findViewById(R.id.graphic_rating);
            IndicatorSeekBar indicatorSeekBar4 = (IndicatorSeekBar) w2.a.c(cVar).findViewById(R.id.sound_rating);
            TextView textView = (TextView) w2.a.c(cVar).findViewById(R.id.average_rating);
            Integer S = pVar.S();
            float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            indicatorSeekBar.setProgress(S == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : S.intValue());
            indicatorSeekBar2.setProgress(pVar.B() == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : r9.intValue());
            indicatorSeekBar3.setProgress(pVar.A() == null ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : r9.intValue());
            Integer K = pVar.K();
            if (K != null) {
                f10 = K.intValue();
            }
            indicatorSeekBar4.setProgress(f10);
            jc.l.e(indicatorSeekBar, "storyRating");
            indicatorSeekBar.setOnSeekChangeListener(new l7.j(new m(uVar, cVar, vVar, indicatorSeekBar2, indicatorSeekBar3, indicatorSeekBar4, textView)));
            jc.l.e(indicatorSeekBar2, "charactersRating");
            indicatorSeekBar2.setOnSeekChangeListener(new l7.j(new n(uVar, cVar, vVar, indicatorSeekBar, indicatorSeekBar3, indicatorSeekBar4, textView)));
            jc.l.e(indicatorSeekBar3, "artRating");
            indicatorSeekBar3.setOnSeekChangeListener(new l7.j(new o(uVar, cVar, vVar, indicatorSeekBar, indicatorSeekBar2, indicatorSeekBar4, textView)));
            jc.l.e(indicatorSeekBar4, "ostRating");
            indicatorSeekBar4.setOnSeekChangeListener(new l7.j(new p(uVar, cVar, vVar, indicatorSeekBar, indicatorSeekBar2, indicatorSeekBar3, textView)));
            int progress = (((indicatorSeekBar.getProgress() + indicatorSeekBar2.getProgress()) + indicatorSeekBar3.getProgress()) + indicatorSeekBar4.getProgress()) / 4;
            vVar.f9192f = progress;
            textView.setText(String.valueOf(progress));
            t2.a.d(cVar, s2.m.POSITIVE, uVar.f9191f);
            jc.l.e(textView, "averageRating");
            textView.addTextChangedListener(new r(indicatorSeekBar, indicatorSeekBar2, indicatorSeekBar3, indicatorSeekBar4, cVar));
            s2.c.v(cVar, Integer.valueOf(R.string.Ok), null, new q(pVar, indicatorSeekBar, indicatorSeekBar3, indicatorSeekBar2, indicatorSeekBar4, vVar), 2, null);
            s2.c.p(cVar, Integer.valueOf(R.string.Cancel), null, null, 6, null);
            xVar = this;
            xVar.f7705q = cVar;
        } else {
            xVar = this;
        }
        s2.c cVar2 = xVar.f7705q;
        if (cVar2 == null) {
            return;
        }
        cVar2.show();
    }

    public final void O0() {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        p4.p modelData = o0().getModelData();
        List<p4.r> X = modelData == null ? null : modelData.X();
        if (X == null) {
            return;
        }
        s2 c10 = s2.c(getLayoutInflater(), null, false);
        jc.l.e(c10, "inflate(layoutInflater, null, false)");
        f0 f0Var = new f0(X, new s(activity));
        c10.f8713b.setLayoutManager(new LinearLayoutManager(activity));
        c10.f8713b.setAdapter(f0Var);
        new MaterialAlertDialogBuilder(requireActivity()).setView((View) c10.b()).setPositiveButton(R.string.Ok, (DialogInterface.OnClickListener) null).show();
    }

    public final void P0() {
        boolean z10 = g0().f8285c.f8207l.getLineCount() > 5;
        g0().f8285c.f8207l.setMaxLines(z10 ? 5 : Api.BaseClientBuilder.API_PRIORITY_OTHER);
        RightAlignedHorizontalScrollView rightAlignedHorizontalScrollView = g0().f8285c.f8202g;
        jc.l.e(rightAlignedHorizontalScrollView, "binding.extraInfo.animeGenresTagsCompact");
        rightAlignedHorizontalScrollView.setVisibility(z10 ? 0 : 8);
        ChipGroup chipGroup = g0().f8285c.f8204i;
        jc.l.e(chipGroup, "binding.extraInfo.animeGenresTagsFullChips");
        chipGroup.setVisibility(z10 ^ true ? 0 : 8);
    }

    public final void T0(final ImageView imageView) {
        final SlayerImage slayerImage = g0().f8288f;
        jc.l.e(slayerImage, "binding.mangaCoverFull");
        Drawable drawable = imageView.getDrawable();
        if (drawable == null) {
            return;
        }
        final View view = g0().f8287e;
        jc.l.e(view, "binding.fullBackdrop");
        slayerImage.setImageDrawable(drawable);
        imageView.setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        slayerImage.setVisibility(0);
        view.setVisibility(0);
        view.setAlpha(0.5f);
        view.setOnClickListener(new View.OnClickListener() { // from class: i5.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                x.U0(view, imageView, slayerImage, view2);
            }
        });
    }

    @Override // n5.a
    public void e() {
        i5.b0 o02 = o0();
        Bundle bundle = new Bundle();
        bundle.putAll(getArguments());
        bundle.putString("arg_request_type", "GET_SERIES_DETAILS");
        o02.queryFor(bundle, getContext());
    }

    public final r4.b f0() {
        return (r4.b) this.f7712x.getValue();
    }

    public final e1 g0() {
        return (e1) this.f7700l.f(this, C[0]);
    }

    public final m7.e h0() {
        return (m7.e) this.f7701m.getValue();
    }

    public final ja.f i0() {
        return (ja.f) this.f7711w.getValue();
    }

    public final h6.c j0() {
        return (h6.c) this.f7710v.getValue();
    }

    public final f4.d k0() {
        return (f4.d) this.f7704p.getValue();
    }

    @Override // i5.l0.a
    public void l(p4.p pVar, boolean z10) {
        jc.l.f(pVar, "anime");
        if (z10) {
            Context context = g0().f8284b.f8261j.f8313q.getContext();
            TextView textView = g0().f8284b.f8261j.f8313q;
            jc.l.e(textView, "binding.animeOverviewSec…sRatingSection.trackTitle");
            textView.setVisibility(0);
            g0().f8284b.f8261j.f8313q.setText(context.getString(R.string.dropped));
            g0().f8284b.f8261j.f8312p.setImageResource(R.drawable.ic_baseline_remove_from_queue_24);
            return;
        }
        M0(pVar);
    }

    @Override // n5.a
    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public i5.z p() {
        return (i5.z) this.f7702n.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x02b1, code lost:
    
        if (r8 == null) goto L102;
     */
    @Override // n5.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m() {
        final View view;
        List<u4.a> b10;
        List<s4.a> b11;
        List<u4.a> b12;
        List<p4.p> b13;
        String substring;
        String str;
        String str2;
        String str3;
        p4.p modelData = o0().getModelData();
        if (modelData == null || (view = getView()) == null) {
            return;
        }
        List<p4.r> X = modelData.X();
        this.f7714z = !(X == null || X.isEmpty());
        this.f7698j = Boolean.valueOf(modelData.d0());
        androidx.fragment.app.e activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
            vb.p pVar = vb.p.f15031a;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            g0().f8296n.f8440c.setClipToOutline(true);
        }
        boolean e02 = modelData.e0();
        FloatingActionButton floatingActionButton = g0().f8286d;
        jc.l.e(floatingActionButton, "binding.fab");
        floatingActionButton.setVisibility(e02 ? 0 : 8);
        if (e02) {
            FloatingActionButton floatingActionButton2 = g0().f8286d;
            jc.l.e(floatingActionButton2, "binding.fab");
            NestedScrollView nestedScrollView = g0().f8292j;
            jc.l.e(nestedScrollView, "binding.seriesNestedScrollView");
            nestedScrollView.setOnScrollChangeListener(new l7.i(floatingActionButton2));
        }
        p4.m J = modelData.J();
        final String n10 = J == null ? null : J.n();
        ConstraintLayout b14 = g0().f8296n.b();
        jc.l.e(b14, "binding.seriesTrailer.root");
        b14.setVisibility(n10 != null ? 0 : 8);
        if (n10 != null) {
            final String str4 = "https://i.ytimg.com/vi/" + ((Object) n10) + "/hqdefault.jpg";
            d4.a.a(view.getContext()).s(str4).g(r7.j.f12975d).G0().u0(g0().f8296n.f8440c);
            g0().f8296n.b().setOnClickListener(new View.OnClickListener() { // from class: i5.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    x.R0(view, n10, str4, this, view2);
                }
            });
        }
        C0(view, modelData);
        K0(view, modelData);
        A0(view, modelData);
        H0(modelData);
        Group group = g0().f8285c.f8213r;
        jc.l.e(group, "binding.extraInfo.malInfoGroup");
        group.setVisibility(modelData.J() != null ? 0 : 8);
        TextView textView = g0().f8285c.f8207l;
        String f10 = modelData.f();
        textView.setText(f10 == null ? null : qc.u.t0(f10).toString());
        if (h7.c.k(modelData) > 5) {
            g0().f8285c.f8207l.setMaxLines(5);
            RightAlignedHorizontalScrollView rightAlignedHorizontalScrollView = g0().f8285c.f8202g;
            jc.l.e(rightAlignedHorizontalScrollView, "binding.extraInfo.animeGenresTagsCompact");
            rightAlignedHorizontalScrollView.setVisibility(0);
            ChipGroup chipGroup = g0().f8285c.f8204i;
            jc.l.e(chipGroup, "binding.extraInfo.animeGenresTagsFullChips");
            chipGroup.setVisibility(8);
        } else {
            g0().f8285c.f8207l.setMaxLines(Api.BaseClientBuilder.API_PRIORITY_OTHER);
            RightAlignedHorizontalScrollView rightAlignedHorizontalScrollView2 = g0().f8285c.f8202g;
            jc.l.e(rightAlignedHorizontalScrollView2, "binding.extraInfo.animeGenresTagsCompact");
            rightAlignedHorizontalScrollView2.setVisibility(8);
            ChipGroup chipGroup2 = g0().f8285c.f8204i;
            jc.l.e(chipGroup2, "binding.extraInfo.animeGenresTagsFullChips");
            chipGroup2.setVisibility(0);
        }
        g0().f8285c.f8207l.setOnClickListener(new View.OnClickListener() { // from class: i5.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                x.S0(x.this, view2);
            }
        });
        ChipGroup chipGroup3 = g0().f8285c.f8203h;
        jc.l.e(chipGroup3, "binding.extraInfo.animeGenresTagsCompactChips");
        List<String> H = modelData.H();
        List<String> I = modelData.I();
        a0 a0Var = new a0();
        chipGroup3.removeAllViews();
        if (H != null) {
            int i10 = 0;
            for (Object obj : H) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    wb.l.p();
                }
                String str5 = (String) obj;
                Chip chip = new Chip(chipGroup3.getContext());
                chip.setScaleX(-1.0f);
                chip.setText(str5);
                if (I != null && (str3 = I.get(i10)) != null) {
                    chip.setOnClickListener(new l7.k(a0Var, str5, str3));
                    vb.p pVar2 = vb.p.f15031a;
                }
                vb.p pVar3 = vb.p.f15031a;
                chipGroup3.addView(chip);
                i10 = i11;
            }
            vb.p pVar4 = vb.p.f15031a;
        }
        ChipGroup chipGroup4 = g0().f8285c.f8204i;
        jc.l.e(chipGroup4, "binding.extraInfo.animeGenresTagsFullChips");
        List<String> H2 = modelData.H();
        List<String> I2 = modelData.I();
        b0 b0Var = new b0();
        chipGroup4.removeAllViews();
        if (H2 != null) {
            int i12 = 0;
            for (Object obj2 : H2) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    wb.l.p();
                }
                String str6 = (String) obj2;
                Chip chip2 = new Chip(chipGroup4.getContext());
                chip2.setScaleX(-1.0f);
                chip2.setText(str6);
                if (I2 != null && (str2 = I2.get(i12)) != null) {
                    chip2.setOnClickListener(new l7.k(b0Var, str6, str2));
                    vb.p pVar5 = vb.p.f15031a;
                }
                vb.p pVar6 = vb.p.f15031a;
                chipGroup4.addView(chip2);
                i12 = i13;
            }
            vb.p pVar7 = vb.p.f15031a;
        }
        p4.m J2 = modelData.J();
        if (J2 != null) {
            c2 c2Var = g0().f8285c;
            TextView textView2 = c2Var.f8209n;
            String c10 = J2.c();
            String str7 = "?";
            if (c10 == null) {
                c10 = "?";
            }
            textView2.setText(c10);
            TextView textView3 = c2Var.f8198c;
            String e10 = J2.e();
            if (e10 != null) {
                substring = e10.substring(0, 10);
                jc.l.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            substring = "?";
            textView3.setText(substring);
            TextView textView4 = c2Var.f8200e;
            String f11 = J2.f();
            if (f11 != null) {
                String substring2 = f11.substring(0, 10);
                jc.l.e(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                if (substring2 != null) {
                    str7 = substring2;
                }
            }
            textView4.setText(str7);
            c2Var.f8215t.setText(J2.a());
            TextView textView5 = c2Var.f8206k;
            jc.l.e(textView5, "animeStudiosUnknown");
            textView5.setVisibility(J2.i() == null ? 0 : 8);
            ChipGroup chipGroup5 = c2Var.f8205j;
            jc.l.e(chipGroup5, "animeStudiosTags");
            chipGroup5.setVisibility(J2.i() != null ? 0 : 8);
            ChipGroup chipGroup6 = c2Var.f8205j;
            jc.l.e(chipGroup6, "animeStudiosTags");
            List<String> T = modelData.T();
            List<String> W = modelData.W();
            c0 c0Var = new c0();
            chipGroup6.removeAllViews();
            if (T != null) {
                int i14 = 0;
                for (Object obj3 : T) {
                    int i15 = i14 + 1;
                    if (i14 < 0) {
                        wb.l.p();
                    }
                    String str8 = (String) obj3;
                    Chip chip3 = new Chip(chipGroup6.getContext());
                    chip3.setScaleX(-1.0f);
                    chip3.setText(str8);
                    if (W != null && (str = W.get(i14)) != null) {
                        chip3.setOnClickListener(new l7.k(c0Var, str8, str));
                        vb.p pVar8 = vb.p.f15031a;
                    }
                    vb.p pVar9 = vb.p.f15031a;
                    chipGroup6.addView(chip3);
                    i14 = i15;
                }
                vb.p pVar10 = vb.p.f15031a;
            }
            c2Var.f8212q.setText(modelData.i());
            Group group2 = c2Var.f8210o;
            jc.l.e(group2, "engTitleGroup");
            String i16 = modelData.i();
            group2.setVisibility((i16 == null || i16.length() == 0) ^ true ? 0 : 8);
            vb.p pVar11 = vb.p.f15031a;
        }
        g2 g2Var = g0().f8294l;
        LinearLayout b15 = g2Var.b();
        jc.l.e(b15, "root");
        b15.setVisibility(modelData.M() != null ? 0 : 8);
        n4.d<List<p4.p>> M = modelData.M();
        if (M != null && (b13 = M.b()) != null) {
            SupportRecyclerView supportRecyclerView = g2Var.f8387b;
            jc.l.e(supportRecyclerView, "seriesRelated");
            h7.c.h(b13, supportRecyclerView, false, 2, null);
            vb.p pVar12 = vb.p.f15031a;
        }
        vb.p pVar13 = vb.p.f15031a;
        h2 h2Var = g0().f8295m;
        LinearLayoutCompat b16 = h2Var.b();
        jc.l.e(b16, "root");
        b16.setVisibility(modelData.P() != null ? 0 : 8);
        i5.z p10 = p();
        n4.d<List<u4.a>> P = modelData.P();
        Integer valueOf = (P == null || (b10 = P.b()) == null) ? null : Integer.valueOf(b10.size());
        SingleLineTextView singleLineTextView = h2Var.f8417b;
        jc.l.e(singleLineTextView, "headerLoadMore");
        p10.q(valueOf, singleLineTextView, new d0(modelData));
        n4.d<List<u4.a>> P2 = modelData.P();
        if (P2 != null && (b12 = P2.b()) != null) {
            SupportRecyclerView supportRecyclerView2 = h2Var.f8418c;
            jc.l.e(supportRecyclerView2, "seriesSuggestions");
            h7.c.f(b12, supportRecyclerView2, false, 2, null);
        }
        f2 f2Var = g0().f8293k;
        LinearLayoutCompat b17 = f2Var.b();
        jc.l.e(b17, "root");
        b17.setVisibility(modelData.O() != null ? 0 : 8);
        n4.d<List<s4.a>> O = modelData.O();
        if (O != null && (b11 = O.b()) != null) {
            SupportRecyclerView supportRecyclerView3 = f2Var.f8354b;
            jc.l.e(supportRecyclerView3, "seriesRelatedNews");
            h7.c.d(b11, supportRecyclerView3, false, 2, null);
        }
        l0 l0Var = this.f7706r;
        if (l0Var != null) {
            l0Var.y(modelData);
        }
        M0(modelData);
        h0().v(modelData);
        g0().f8284b.f8261j.f8306j.setOnClickListener(new View.OnClickListener() { // from class: i5.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                x.Q0(x.this, view2);
            }
        });
        ProgressLayout progressLayout = g0().f8289g;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showLoadedContent(progressLayout);
    }

    public final e7.d m0() {
        return (e7.d) this.f7699k.getValue();
    }

    public final SeriesEndpoint n0() {
        return (SeriesEndpoint) this.f7709u.getValue();
    }

    @Override // i5.l0.a
    public void o(p4.p pVar, boolean z10) {
        jc.l.f(pVar, "anime");
        if (z10) {
            Context context = g0().f8284b.f8261j.f8313q.getContext();
            TextView textView = g0().f8284b.f8261j.f8313q;
            jc.l.e(textView, "binding.animeOverviewSec…sRatingSection.trackTitle");
            textView.setVisibility(0);
            g0().f8284b.f8261j.f8313q.setText(context.getString(R.string.plan_to_watch));
            g0().f8284b.f8261j.f8312p.setImageResource(R.drawable.ic_baseline_add_to_queue_24);
            return;
        }
        M0(pVar);
    }

    public i5.b0 o0() {
        return (i5.b0) this.f7703o.getValue();
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        I(R.menu.series_menu);
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        super.onCreateOptionsMenu(menu, menuInflater);
        MenuItem findItem = menu.findItem(R.id.action_favour);
        if (findItem != null) {
            q0.l.a(findItem, h0());
        }
        MenuItem findItem2 = menu.findItem(R.id.action_comment);
        if (findItem2 != null) {
            findItem2.setEnabled(this.f7698j != null);
            Boolean bool = this.f7698j;
            findItem2.setIcon((bool == null || jc.l.a(bool, Boolean.TRUE)) ? R.drawable.ic_chat_grey_600_24dp : R.drawable.ic_baseline_speaker_notes_off_24);
        }
        MenuItem findItem3 = menu.findItem(R.id.top_contributors);
        if (findItem3 == null) {
            return;
        }
        findItem3.setVisible(q0());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        e1 c10 = e1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        J0(c10);
        ProgressLayout b10 = g0().b();
        jc.l.e(b10, "binding.root");
        return b10;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        s2.c cVar = this.f7705q;
        if (cVar != null) {
            cVar.dismiss();
        }
        this.f7705q = null;
        l0 l0Var = this.f7706r;
        if (l0Var != null) {
            l0Var.dismiss();
        }
        this.f7706r = null;
        i5.e eVar = this.f7707s;
        if (eVar != null) {
            eVar.dismiss();
        }
        this.f7707s = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_comment) {
            Boolean bool = this.f7698j;
            if (bool == null) {
                return false;
            }
            bool.booleanValue();
            Boolean bool2 = this.f7698j;
            jc.l.c(bool2);
            if (bool2.booleanValue()) {
                y0();
            } else {
                androidx.fragment.app.e activity = getActivity();
                if (activity != null) {
                    k7.b.q(activity, R.string.anime_comment_disabled, 0, 2, null);
                }
            }
        } else if (itemId == R.id.add_to_customlist) {
            x0();
        } else if (itemId == R.id.top_contributors) {
            O0();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ProgressLayout progressLayout = g0().f8289g;
        jc.l.e(progressLayout, "binding.progressLayout");
        SupportExtentionKt.showContentLoading(progressLayout);
        if (o0().hasModelData()) {
            m();
        } else {
            e();
        }
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f7706r = new l0(this);
        this.f7707s = new i5.e(this);
        this.f7708t = requireArguments().getBoolean("not_yet_aired");
        g0().f8286d.setOnClickListener(new View.OnClickListener() { // from class: i5.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                x.v0(x.this, view2);
            }
        });
        j0().n().i(getViewLifecycleOwner(), new androidx.lifecycle.z() { // from class: i5.l
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                x.w0(view, (g7.c) obj);
            }
        });
    }

    public final long p0() {
        return ((Number) this.f7713y.getValue()).longValue();
    }

    @Override // i5.e.b
    public void q(long j10, String str, p4.g gVar, int i10) {
        jc.l.f(str, "contentType");
        jc.l.f(gVar, "contentRating");
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        androidx.lifecycle.r.a(viewLifecycleOwner).f(new f(i10, j10, str, gVar, null));
    }

    public final boolean q0() {
        return this.f7714z;
    }

    public final void r0(androidx.work.a aVar) {
        d2.n b10 = new n.a(ListManagementWorker.class).g(aVar).b();
        jc.l.e(b10, "Builder(ListManagementWo…\n                .build()");
        d2.n nVar = b10;
        d2.v i10 = d2.v.i(requireContext());
        i10.g("ListManagementWorker#Series0003", d2.f.KEEP, nVar);
        LiveData<d2.u> j10 = i10.j(nVar.a());
        Context context = getContext();
        if (context == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        }
        j10.i((androidx.fragment.app.e) context, this.A);
    }

    @Override // b5.a
    public boolean s() {
        SlayerImage slayerImage = g0().f8288f;
        jc.l.e(slayerImage, "binding.mangaCoverFull");
        if (!(slayerImage.getVisibility() == 0)) {
            return true;
        }
        g0().f8287e.performClick();
        return false;
    }

    @Override // androidx.lifecycle.z
    /* renamed from: t0, reason: merged with bridge method [inline-methods] */
    public void B(p4.p pVar) {
        if (pVar == null) {
            k7.b.m(getContext(), g0().f8289g, R.string.empty_response, R.string.action_retry, new View.OnClickListener() { // from class: i5.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    x.u0(x.this, view);
                }
            });
        } else {
            m();
        }
    }

    @Override // i5.e.b
    public void u(long j10, String str, String str2, p4.g gVar, int i10) {
        jc.l.f(str, "contentType");
        jc.l.f(str2, "level");
        jc.l.f(gVar, "contentRating");
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        androidx.lifecycle.r.a(viewLifecycleOwner).f(new e(i10, str2, j10, str, gVar, null));
    }

    public final void x0() {
        p4.p modelData = o0().getModelData();
        if (modelData == null) {
            return;
        }
        AddToCustomListActivity.a aVar = AddToCustomListActivity.f4186l;
        Context requireContext = requireContext();
        jc.l.e(requireContext, "requireContext()");
        startActivity(aVar.a(requireContext, modelData.m()));
    }

    @Override // i5.l0.a
    public void y(p4.p pVar, boolean z10) {
        jc.l.f(pVar, "anime");
        if (z10) {
            Context context = g0().f8284b.f8261j.f8313q.getContext();
            TextView textView = g0().f8284b.f8261j.f8313q;
            jc.l.e(textView, "binding.animeOverviewSec…sRatingSection.trackTitle");
            textView.setVisibility(0);
            g0().f8284b.f8261j.f8313q.setText(context.getString(R.string.on_hold));
            g0().f8284b.f8261j.f8312p.setImageResource(R.drawable.ic_baseline_pause_presentation_24);
            return;
        }
        M0(pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void y0() {
        bb.f<Boolean> h10;
        Bundle arguments = getArguments();
        long j10 = arguments == null ? -1L : arguments.getLong("anime_id");
        if (j10 == -1) {
            return;
        }
        Bundle bundle = new Bundle();
        e7.d m02 = m0();
        m02.d().put("anime_id", Long.valueOf(j10));
        bundle.putString("arg_json", m02.b());
        bundle.putString("arg_request_type", "GET_SERIES_COMMENTS");
        bundle.putLong("anime_id", j10);
        f4.d e10 = p().e();
        if ((e10 == null || (h10 = e10.h()) == null || !h10.get().booleanValue()) ? false : true) {
            Context requireContext = requireContext();
            jc.l.e(requireContext, "requireContext()");
            s2.c.p(s2.c.v(s2.c.n(new s2.c(requireContext, null, 2, 0 == true ? 1 : 0), Integer.valueOf(R.string.comment_content_warning), null, null, 6, null), Integer.valueOf(R.string.Ok), null, new g(bundle), 2, null), Integer.valueOf(R.string.Cancel), null, null, 6, null).show();
            return;
        }
        androidx.fragment.app.e activity = getActivity();
        Intent intent = new Intent(activity, (Class<?>) CommentActivity.class);
        intent.setFlags(268435456);
        intent.putExtras(bundle);
        if (activity == null) {
            return;
        }
        activity.startActivity(intent);
    }

    public final void z0(String str) {
        jc.l.f(str, "coverUrl");
        androidx.fragment.app.e activity = getActivity();
        if (activity != null && k7.a.b(activity, "android.permission.WRITE_EXTERNAL_STORAGE", 0, 2, null)) {
            j0().q(str);
        }
    }
}
