package com.yalantis.ucrop;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.UCropView;
import com.yalantis.ucrop.view.widget.AspectRatioTextView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import jb.i;
import kb.b;
import x1.o;
import x1.q;

/* loaded from: classes.dex */
public class UCropActivity extends androidx.appcompat.app.e {
    public static final Bitmap.CompressFormat J = Bitmap.CompressFormat.JPEG;
    public TextView A;
    public TextView B;
    public View C;
    public o D;

    /* renamed from: f, reason: collision with root package name */
    public String f5096f;

    /* renamed from: g, reason: collision with root package name */
    public int f5097g;

    /* renamed from: h, reason: collision with root package name */
    public int f5098h;

    /* renamed from: i, reason: collision with root package name */
    public int f5099i;

    /* renamed from: j, reason: collision with root package name */
    public int f5100j;

    /* renamed from: k, reason: collision with root package name */
    public int f5101k;

    /* renamed from: l, reason: collision with root package name */
    public int f5102l;

    /* renamed from: m, reason: collision with root package name */
    public int f5103m;

    /* renamed from: n, reason: collision with root package name */
    public int f5104n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f5105o;

    /* renamed from: q, reason: collision with root package name */
    public UCropView f5107q;

    /* renamed from: r, reason: collision with root package name */
    public GestureCropImageView f5108r;

    /* renamed from: s, reason: collision with root package name */
    public OverlayView f5109s;

    /* renamed from: t, reason: collision with root package name */
    public ViewGroup f5110t;

    /* renamed from: u, reason: collision with root package name */
    public ViewGroup f5111u;

    /* renamed from: v, reason: collision with root package name */
    public ViewGroup f5112v;

    /* renamed from: w, reason: collision with root package name */
    public ViewGroup f5113w;

    /* renamed from: x, reason: collision with root package name */
    public ViewGroup f5114x;

    /* renamed from: y, reason: collision with root package name */
    public ViewGroup f5115y;

    /* renamed from: p, reason: collision with root package name */
    public boolean f5106p = true;

    /* renamed from: z, reason: collision with root package name */
    public List<ViewGroup> f5116z = new ArrayList();
    public Bitmap.CompressFormat E = J;
    public int F = 90;
    public int[] G = {1, 2, 3};
    public b.InterfaceC0217b H = new a();
    public final View.OnClickListener I = new g();

    /* loaded from: classes.dex */
    public class a implements b.InterfaceC0217b {
        public a() {
        }

        @Override // kb.b.InterfaceC0217b
        public void a(Exception exc) {
            UCropActivity.this.x(exc);
            UCropActivity.this.finish();
        }

        @Override // kb.b.InterfaceC0217b
        public void b(float f10) {
            UCropActivity.this.z(f10);
        }

        @Override // kb.b.InterfaceC0217b
        public void c(float f10) {
            UCropActivity.this.t(f10);
        }

        @Override // kb.b.InterfaceC0217b
        public void d() {
            UCropActivity.this.f5107q.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            UCropActivity.this.C.setClickable(false);
            UCropActivity.this.f5106p = false;
            UCropActivity.this.supportInvalidateOptionsMenu();
        }
    }

    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.f5108r.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).d(view.isSelected()));
            UCropActivity.this.f5108r.z();
            if (view.isSelected()) {
                return;
            }
            for (ViewGroup viewGroup : UCropActivity.this.f5116z) {
                viewGroup.setSelected(viewGroup == view);
            }
        }
    }

    /* loaded from: classes.dex */
    public class c implements HorizontalProgressWheelView.a {
        public c() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a(float f10, float f11) {
            UCropActivity.this.f5108r.x(f10 / 42.0f);
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            UCropActivity.this.f5108r.z();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c() {
            UCropActivity.this.f5108r.t();
        }
    }

    /* loaded from: classes.dex */
    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.q();
        }
    }

    /* loaded from: classes.dex */
    public class e implements View.OnClickListener {
        public e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.r(90);
        }
    }

    /* loaded from: classes.dex */
    public class f implements HorizontalProgressWheelView.a {
        public f() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a(float f10, float f11) {
            if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                UCropActivity.this.f5108r.C(UCropActivity.this.f5108r.getCurrentScale() + (f10 * ((UCropActivity.this.f5108r.getMaxScale() - UCropActivity.this.f5108r.getMinScale()) / 15000.0f)));
            } else {
                UCropActivity.this.f5108r.E(UCropActivity.this.f5108r.getCurrentScale() + (f10 * ((UCropActivity.this.f5108r.getMaxScale() - UCropActivity.this.f5108r.getMinScale()) / 15000.0f)));
            }
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            UCropActivity.this.f5108r.z();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c() {
            UCropActivity.this.f5108r.t();
        }
    }

    /* loaded from: classes.dex */
    public class g implements View.OnClickListener {
        public g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            UCropActivity.this.C(view.getId());
        }
    }

    /* loaded from: classes.dex */
    public class h implements gb.a {
        public h() {
        }

        @Override // gb.a
        public void a(Throwable th) {
            UCropActivity.this.x(th);
            UCropActivity.this.finish();
        }

        @Override // gb.a
        public void b(Uri uri, int i10, int i11, int i12, int i13) {
            UCropActivity uCropActivity = UCropActivity.this;
            uCropActivity.y(uri, uCropActivity.f5108r.getTargetAspectRatio(), i10, i11, i12, i13);
            UCropActivity.this.finish();
        }
    }

    static {
        androidx.appcompat.app.f.z(true);
    }

    public final void A(int i10) {
        TextView textView = this.B;
        if (textView != null) {
            textView.setTextColor(i10);
        }
    }

    @TargetApi(21)
    public final void B(int i10) {
        Window window;
        if (Build.VERSION.SDK_INT < 21 || (window = getWindow()) == null) {
            return;
        }
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(i10);
    }

    public final void C(int i10) {
        if (this.f5105o) {
            ViewGroup viewGroup = this.f5110t;
            int i11 = fb.d.f6580n;
            viewGroup.setSelected(i10 == i11);
            ViewGroup viewGroup2 = this.f5111u;
            int i12 = fb.d.f6581o;
            viewGroup2.setSelected(i10 == i12);
            ViewGroup viewGroup3 = this.f5112v;
            int i13 = fb.d.f6582p;
            viewGroup3.setSelected(i10 == i13);
            this.f5113w.setVisibility(i10 == i11 ? 0 : 8);
            this.f5114x.setVisibility(i10 == i12 ? 0 : 8);
            this.f5115y.setVisibility(i10 == i13 ? 0 : 8);
            m(i10);
            if (i10 == i13) {
                s(0);
            } else if (i10 == i12) {
                s(1);
            } else {
                s(2);
            }
        }
    }

    public final void D() {
        B(this.f5098h);
        Toolbar toolbar = (Toolbar) findViewById(fb.d.f6586t);
        toolbar.setBackgroundColor(this.f5097g);
        toolbar.setTitleTextColor(this.f5100j);
        TextView textView = (TextView) toolbar.findViewById(fb.d.f6587u);
        textView.setTextColor(this.f5100j);
        textView.setText(this.f5096f);
        Drawable mutate = f0.a.f(this, this.f5102l).mutate();
        mutate.setColorFilter(this.f5100j, PorterDuff.Mode.SRC_ATOP);
        toolbar.setNavigationIcon(mutate);
        setSupportActionBar(toolbar);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.t(false);
        }
    }

    public final void E(Intent intent) {
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (parcelableArrayListExtra == null || parcelableArrayListExtra.isEmpty()) {
            intExtra = 2;
            parcelableArrayListExtra = new ArrayList();
            parcelableArrayListExtra.add(new hb.a(null, 1.0f, 1.0f));
            parcelableArrayListExtra.add(new hb.a(null, 3.0f, 4.0f));
            parcelableArrayListExtra.add(new hb.a(getString(fb.g.f6600c).toUpperCase(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
            parcelableArrayListExtra.add(new hb.a(null, 3.0f, 2.0f));
            parcelableArrayListExtra.add(new hb.a(null, 16.0f, 9.0f));
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(fb.d.f6573g);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        Iterator it2 = parcelableArrayListExtra.iterator();
        while (it2.hasNext()) {
            hb.a aVar = (hb.a) it2.next();
            FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(fb.e.f6594b, (ViewGroup) null);
            frameLayout.setLayoutParams(layoutParams);
            AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) frameLayout.getChildAt(0);
            aspectRatioTextView.setActiveColor(this.f5099i);
            aspectRatioTextView.setAspectRatio(aVar);
            linearLayout.addView(frameLayout);
            this.f5116z.add(frameLayout);
        }
        this.f5116z.get(intExtra).setSelected(true);
        Iterator<ViewGroup> it3 = this.f5116z.iterator();
        while (it3.hasNext()) {
            it3.next().setOnClickListener(new b());
        }
    }

    public final void F() {
        this.A = (TextView) findViewById(fb.d.f6584r);
        int i10 = fb.d.f6578l;
        ((HorizontalProgressWheelView) findViewById(i10)).setScrollingListener(new c());
        ((HorizontalProgressWheelView) findViewById(i10)).setMiddleLineColor(this.f5099i);
        findViewById(fb.d.f6592z).setOnClickListener(new d());
        findViewById(fb.d.A).setOnClickListener(new e());
        u(this.f5099i);
    }

    public final void G() {
        this.B = (TextView) findViewById(fb.d.f6585s);
        int i10 = fb.d.f6579m;
        ((HorizontalProgressWheelView) findViewById(i10)).setScrollingListener(new f());
        ((HorizontalProgressWheelView) findViewById(i10)).setMiddleLineColor(this.f5099i);
        A(this.f5099i);
    }

    public final void H() {
        ImageView imageView = (ImageView) findViewById(fb.d.f6572f);
        ImageView imageView2 = (ImageView) findViewById(fb.d.f6571e);
        ImageView imageView3 = (ImageView) findViewById(fb.d.f6570d);
        imageView.setImageDrawable(new i(imageView.getDrawable(), this.f5099i));
        imageView2.setImageDrawable(new i(imageView2.getDrawable(), this.f5099i));
        imageView3.setImageDrawable(new i(imageView3.getDrawable(), this.f5099i));
    }

    public final void I(Intent intent) {
        this.f5098h = intent.getIntExtra("com.yalantis.ucrop.StatusBarColor", f0.a.d(this, fb.a.f6549h));
        this.f5097g = intent.getIntExtra("com.yalantis.ucrop.ToolbarColor", f0.a.d(this, fb.a.f6550i));
        this.f5099i = intent.getIntExtra("com.yalantis.ucrop.UcropColorControlsWidgetActive", f0.a.d(this, fb.a.f6542a));
        this.f5100j = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarWidgetColor", f0.a.d(this, fb.a.f6551j));
        this.f5102l = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarCancelDrawable", fb.c.f6565a);
        this.f5103m = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarCropDrawable", fb.c.f6566b);
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.UcropToolbarTitleText");
        this.f5096f = stringExtra;
        if (stringExtra == null) {
            stringExtra = getResources().getString(fb.g.f6599b);
        }
        this.f5096f = stringExtra;
        this.f5104n = intent.getIntExtra("com.yalantis.ucrop.UcropLogoColor", f0.a.d(this, fb.a.f6547f));
        this.f5105o = !intent.getBooleanExtra("com.yalantis.ucrop.HideBottomControls", false);
        this.f5101k = intent.getIntExtra("com.yalantis.ucrop.UcropRootViewBackgroundColor", f0.a.d(this, fb.a.f6543b));
        D();
        o();
        if (this.f5105o) {
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) findViewById(fb.d.f6590x)).findViewById(fb.d.f6567a);
            viewGroup.setVisibility(0);
            LayoutInflater.from(this).inflate(fb.e.f6595c, viewGroup, true);
            x1.b bVar = new x1.b();
            this.D = bVar;
            bVar.setDuration(50L);
            ViewGroup viewGroup2 = (ViewGroup) findViewById(fb.d.f6580n);
            this.f5110t = viewGroup2;
            viewGroup2.setOnClickListener(this.I);
            ViewGroup viewGroup3 = (ViewGroup) findViewById(fb.d.f6581o);
            this.f5111u = viewGroup3;
            viewGroup3.setOnClickListener(this.I);
            ViewGroup viewGroup4 = (ViewGroup) findViewById(fb.d.f6582p);
            this.f5112v = viewGroup4;
            viewGroup4.setOnClickListener(this.I);
            this.f5113w = (ViewGroup) findViewById(fb.d.f6573g);
            this.f5114x = (ViewGroup) findViewById(fb.d.f6574h);
            this.f5115y = (ViewGroup) findViewById(fb.d.f6575i);
            E(intent);
            F();
            G();
            H();
        }
    }

    public final void l() {
        if (this.C == null) {
            this.C = new View(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(3, fb.d.f6586t);
            this.C.setLayoutParams(layoutParams);
            this.C.setClickable(true);
        }
        ((RelativeLayout) findViewById(fb.d.f6590x)).addView(this.C);
    }

    public final void m(int i10) {
        q.a((ViewGroup) findViewById(fb.d.f6590x), this.D);
        this.f5112v.findViewById(fb.d.f6585s).setVisibility(i10 == fb.d.f6582p ? 0 : 8);
        this.f5110t.findViewById(fb.d.f6583q).setVisibility(i10 == fb.d.f6580n ? 0 : 8);
        this.f5111u.findViewById(fb.d.f6584r).setVisibility(i10 != fb.d.f6581o ? 8 : 0);
    }

    public void n() {
        this.C.setClickable(true);
        this.f5106p = true;
        supportInvalidateOptionsMenu();
        this.f5108r.u(this.E, this.F, new h());
    }

    public final void o() {
        UCropView uCropView = (UCropView) findViewById(fb.d.f6588v);
        this.f5107q = uCropView;
        this.f5108r = uCropView.getCropImageView();
        this.f5109s = this.f5107q.getOverlayView();
        this.f5108r.setTransformImageListener(this.H);
        ((ImageView) findViewById(fb.d.f6569c)).setColorFilter(this.f5104n, PorterDuff.Mode.SRC_ATOP);
        int i10 = fb.d.f6589w;
        findViewById(i10).setBackgroundColor(this.f5101k);
        if (this.f5105o) {
            return;
        }
        ((RelativeLayout.LayoutParams) findViewById(i10).getLayoutParams()).bottomMargin = 0;
        findViewById(i10).requestLayout();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(fb.e.f6593a);
        Intent intent = getIntent();
        I(intent);
        v(intent);
        w();
        l();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(fb.f.f6597a, menu);
        MenuItem findItem = menu.findItem(fb.d.f6577k);
        Drawable icon = findItem.getIcon();
        if (icon != null) {
            try {
                icon.mutate();
                icon.setColorFilter(this.f5100j, PorterDuff.Mode.SRC_ATOP);
                findItem.setIcon(icon);
            } catch (IllegalStateException e10) {
                String.format("%s - %s", e10.getMessage(), getString(fb.g.f6601d));
            }
            ((Animatable) findItem.getIcon()).start();
        }
        MenuItem findItem2 = menu.findItem(fb.d.f6576j);
        Drawable f10 = f0.a.f(this, this.f5103m);
        if (f10 != null) {
            f10.mutate();
            f10.setColorFilter(this.f5100j, PorterDuff.Mode.SRC_ATOP);
            findItem2.setIcon(f10);
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == fb.d.f6576j) {
            n();
            return true;
        }
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(fb.d.f6576j).setVisible(!this.f5106p);
        menu.findItem(fb.d.f6577k).setVisible(this.f5106p);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.e, androidx.fragment.app.e, android.app.Activity
    public void onStop() {
        super.onStop();
        GestureCropImageView gestureCropImageView = this.f5108r;
        if (gestureCropImageView != null) {
            gestureCropImageView.t();
        }
    }

    public final void p(Intent intent) {
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.CompressionFormatName");
        Bitmap.CompressFormat valueOf = !TextUtils.isEmpty(stringExtra) ? Bitmap.CompressFormat.valueOf(stringExtra) : null;
        if (valueOf == null) {
            valueOf = J;
        }
        this.E = valueOf;
        this.F = intent.getIntExtra("com.yalantis.ucrop.CompressionQuality", 90);
        int[] intArrayExtra = intent.getIntArrayExtra("com.yalantis.ucrop.AllowedGestures");
        if (intArrayExtra != null && intArrayExtra.length == 3) {
            this.G = intArrayExtra;
        }
        this.f5108r.setMaxBitmapSize(intent.getIntExtra("com.yalantis.ucrop.MaxBitmapSize", 0));
        this.f5108r.setMaxScaleMultiplier(intent.getFloatExtra("com.yalantis.ucrop.MaxScaleMultiplier", 10.0f));
        this.f5108r.setImageToWrapCropBoundsAnimDuration(intent.getIntExtra("com.yalantis.ucrop.ImageToCropBoundsAnimDuration", 500));
        this.f5109s.setFreestyleCropEnabled(intent.getBooleanExtra("com.yalantis.ucrop.FreeStyleCrop", false));
        this.f5109s.setDimmedColor(intent.getIntExtra("com.yalantis.ucrop.DimmedLayerColor", getResources().getColor(fb.a.f6546e)));
        this.f5109s.setCircleDimmedLayer(intent.getBooleanExtra("com.yalantis.ucrop.CircleDimmedLayer", false));
        this.f5109s.setShowCropFrame(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropFrame", true));
        this.f5109s.setCropFrameColor(intent.getIntExtra("com.yalantis.ucrop.CropFrameColor", getResources().getColor(fb.a.f6544c)));
        this.f5109s.setCropFrameStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropFrameStrokeWidth", getResources().getDimensionPixelSize(fb.b.f6555a)));
        this.f5109s.setShowCropGrid(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropGrid", true));
        this.f5109s.setCropGridRowCount(intent.getIntExtra("com.yalantis.ucrop.CropGridRowCount", 2));
        this.f5109s.setCropGridColumnCount(intent.getIntExtra("com.yalantis.ucrop.CropGridColumnCount", 2));
        this.f5109s.setCropGridColor(intent.getIntExtra("com.yalantis.ucrop.CropGridColor", getResources().getColor(fb.a.f6545d)));
        this.f5109s.setCropGridStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropGridStrokeWidth", getResources().getDimensionPixelSize(fb.b.f6556b)));
        float floatExtra = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioX", StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        float floatExtra2 = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioY", StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (floatExtra > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && floatExtra2 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            ViewGroup viewGroup = this.f5110t;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            this.f5108r.setTargetAspectRatio(floatExtra / floatExtra2);
        } else if (parcelableArrayListExtra != null && intExtra < parcelableArrayListExtra.size()) {
            this.f5108r.setTargetAspectRatio(((hb.a) parcelableArrayListExtra.get(intExtra)).c() / ((hb.a) parcelableArrayListExtra.get(intExtra)).e());
        } else {
            this.f5108r.setTargetAspectRatio(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
        int intExtra2 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeX", 0);
        int intExtra3 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeY", 0);
        if (intExtra2 <= 0 || intExtra3 <= 0) {
            return;
        }
        this.f5108r.setMaxResultImageSizeX(intExtra2);
        this.f5108r.setMaxResultImageSizeY(intExtra3);
    }

    public final void q() {
        GestureCropImageView gestureCropImageView = this.f5108r;
        gestureCropImageView.x(-gestureCropImageView.getCurrentAngle());
        this.f5108r.z();
    }

    public final void r(int i10) {
        this.f5108r.x(i10);
        this.f5108r.z();
    }

    public final void s(int i10) {
        GestureCropImageView gestureCropImageView = this.f5108r;
        int[] iArr = this.G;
        gestureCropImageView.setScaleEnabled(iArr[i10] == 3 || iArr[i10] == 1);
        GestureCropImageView gestureCropImageView2 = this.f5108r;
        int[] iArr2 = this.G;
        gestureCropImageView2.setRotateEnabled(iArr2[i10] == 3 || iArr2[i10] == 2);
    }

    public final void t(float f10) {
        TextView textView = this.A;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f10)));
        }
    }

    public final void u(int i10) {
        TextView textView = this.A;
        if (textView != null) {
            textView.setTextColor(i10);
        }
    }

    public final void v(Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.InputUri");
        Uri uri2 = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.OutputUri");
        p(intent);
        if (uri != null && uri2 != null) {
            try {
                this.f5108r.n(uri, uri2);
                return;
            } catch (Exception e10) {
                x(e10);
                finish();
                return;
            }
        }
        x(new NullPointerException(getString(fb.g.f6598a)));
        finish();
    }

    public final void w() {
        if (this.f5105o) {
            if (this.f5110t.getVisibility() == 0) {
                C(fb.d.f6580n);
                return;
            } else {
                C(fb.d.f6582p);
                return;
            }
        }
        s(0);
    }

    public void x(Throwable th) {
        setResult(96, new Intent().putExtra("com.yalantis.ucrop.Error", th));
    }

    public void y(Uri uri, float f10, int i10, int i11, int i12, int i13) {
        setResult(-1, new Intent().putExtra("com.yalantis.ucrop.OutputUri", uri).putExtra("com.yalantis.ucrop.CropAspectRatio", f10).putExtra("com.yalantis.ucrop.ImageWidth", i12).putExtra("com.yalantis.ucrop.ImageHeight", i13).putExtra("com.yalantis.ucrop.OffsetX", i10).putExtra("com.yalantis.ucrop.OffsetY", i11));
    }

    public final void z(float f10) {
        TextView textView = this.B;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f10 * 100.0f))));
        }
    }
}
