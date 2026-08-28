package com.anslayer.ui.webview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.anslayer.R;
import com.anslayer.ui.webview.WebViewActivity;
import com.anslayer.widget.ErrorView;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import io.wax911.support.SupportExtentionKt;
import j4.d3;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import jc.l;
import jc.m;

/* compiled from: WebViewActivity.kt */
/* loaded from: classes.dex */
public final class WebViewActivity extends o5.a<d3> {

    /* renamed from: r, reason: collision with root package name */
    public static final a f4369r = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public Bundle f4370l;

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f4371m = vb.f.a(f.f4380f);

    /* renamed from: n, reason: collision with root package name */
    public final vb.e f4372n = vb.f.a(new b());

    /* renamed from: o, reason: collision with root package name */
    public final vb.e f4373o = vb.f.a(new g());

    /* renamed from: p, reason: collision with root package name */
    public boolean f4374p;

    /* renamed from: q, reason: collision with root package name */
    public ValueCallback<Uri[]> f4375q;

    /* compiled from: WebViewActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final Intent a(Context context) {
            l.f(context, "context");
            Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
            intent.putExtra("url_parameter", "dashboard");
            intent.addFlags(67108864);
            return intent;
        }

        public final Intent b(Context context, long j10) {
            l.f(context, "context");
            Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
            intent.putExtra("url_parameter", "edit");
            intent.putExtra("anime_id", j10);
            intent.addFlags(67108864);
            return intent;
        }
    }

    /* compiled from: WebViewActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<r4.b> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<r4.b> {
        }

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            Type b10;
            try {
                ja.f s10 = WebViewActivity.this.s();
                String n10 = WebViewActivity.this.g().n();
                l.c(n10);
                Type type = new a().getType();
                l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = s10.l(n10, b10);
                l.b(l10, "fromJson(json, typeToken<T>())");
                return (r4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: ErrorView.kt */
    /* loaded from: classes.dex */
    public static final class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WebViewActivity.this.c().f8270e.reload();
        }
    }

    /* compiled from: WebViewActivity.kt */
    /* loaded from: classes.dex */
    public static final class d extends WebChromeClient {
        public d() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i10) {
            LinearProgressIndicator linearProgressIndicator = WebViewActivity.this.c().f8268c;
            l.e(linearProgressIndicator, "binding.progressBar");
            linearProgressIndicator.setVisibility(0);
            WebViewActivity.this.c().f8268c.setProgress(i10);
            if (i10 == 100) {
                LinearProgressIndicator linearProgressIndicator2 = WebViewActivity.this.c().f8268c;
                l.e(linearProgressIndicator2, "binding.progressBar");
                linearProgressIndicator2.setVisibility(4);
                WebViewActivity.this.invalidateOptionsMenu();
            }
            super.onProgressChanged(webView, i10);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            WebViewActivity.this.f4375q = valueCallback;
            if (k7.a.b(WebViewActivity.this, "android.permission.READ_EXTERNAL_STORAGE", 0, 2, null)) {
                Intent intent = new Intent("android.intent.action.GET_CONTENT");
                intent.setType("image/*");
                if (Build.VERSION.SDK_INT >= 19) {
                    intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/png", "image/jpeg", "image/jpg"});
                }
                WebViewActivity webViewActivity = WebViewActivity.this;
                Resources resources = webViewActivity.getResources();
                webViewActivity.startActivityForResult(Intent.createChooser(intent, resources != null ? resources.getString(R.string.file_select_cover) : null), 109);
            }
            return true;
        }
    }

    /* compiled from: WebViewActivity.kt */
    /* loaded from: classes.dex */
    public static final class e extends WebViewClient {
        public e() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            WebViewActivity.this.invalidateOptionsMenu();
            if (WebViewActivity.this.f4374p) {
                if (webView != null) {
                    webView.scrollTo(0, 0);
                }
                WebViewActivity.this.f4374p = false;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            d3 c10 = WebViewActivity.this.c();
            ErrorView errorView = c10 == null ? null : c10.f8267b;
            if (errorView != null) {
                errorView.setVisibility(8);
            }
            d3 c11 = WebViewActivity.this.c();
            WebView webView2 = c11 != null ? c11.f8270e : null;
            if (webView2 != null) {
                webView2.setVisibility(0);
            }
            WebViewActivity.this.invalidateOptionsMenu();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            d3 c10 = WebViewActivity.this.c();
            ErrorView errorView = c10 == null ? null : c10.f8267b;
            if (errorView != null) {
                errorView.setVisibility(0);
            }
            if (webView != null) {
                webView.stopLoading();
            }
            if (webView != null) {
                webView.clearView();
            }
            if (webView == null) {
                return;
            }
            webView.setVisibility(8);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<ja.f> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f4380f = new f();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<ja.f> {
        }

        public f() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ja.f] */
        @Override // ic.a
        public final ja.f invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: WebViewActivity.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<t4.b> {

        /* compiled from: GsonBuilder.kt */
        /* loaded from: classes.dex */
        public static final class a extends oa.a<t4.b> {
        }

        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t4.b invoke() {
            Type b10;
            try {
                ja.f s10 = WebViewActivity.this.s();
                String q10 = WebViewActivity.this.g().q();
                l.c(q10);
                Type type = new a().getType();
                l.b(type, "object : TypeToken<T>() {} .type");
                if ((type instanceof ParameterizedType) && com.github.salomonbrys.kotson.c.a((ParameterizedType) type)) {
                    b10 = ((ParameterizedType) type).getRawType();
                    l.b(b10, "type.rawType");
                } else {
                    b10 = com.github.salomonbrys.kotson.c.b(type);
                }
                Object l10 = s10.l(q10, b10);
                l.b(l10, "fromJson(json, typeToken<T>())");
                return (t4.b) l10;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static final void u(WebViewActivity webViewActivity, View view) {
        l.f(webViewActivity, "this$0");
        super.onBackPressed();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 109) {
            Uri data = intent == null ? null : intent.getData();
            if (data != null && i11 == -1) {
                ValueCallback<Uri[]> valueCallback = this.f4375q;
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(new Uri[]{data});
                }
                this.f4375q = null;
                return;
            }
            ValueCallback<Uri[]> valueCallback2 = this.f4375q;
            if (valueCallback2 != null) {
                valueCallback2.onReceiveValue(null);
            }
            this.f4375q = null;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (c().f8270e.canGoBack()) {
            c().f8270e.goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 20 && !k7.e.f10055a.a(this)) {
            k7.b.o(this, R.string.information_webview_required, 1);
            finish();
            return;
        }
        try {
            d3 c10 = d3.c(getLayoutInflater());
            l.e(c10, "inflate(layoutInflater)");
            j(c10);
            setContentView(c().b());
            r4.b r10 = r();
            String f10 = r10 == null ? null : r10.f();
            t4.b t10 = t();
            String d10 = t10 != null ? t10.d() : null;
            String stringExtra = getIntent().getStringExtra("url_parameter");
            if (!(f10 == null || f10.length() == 0)) {
                if (!(d10 == null || d10.length() == 0)) {
                    if (!(stringExtra == null || stringExtra.length() == 0)) {
                        long longExtra = getIntent().getLongExtra("anime_id", -1L);
                        String str = i() ? "on" : "off";
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(((Object) f10) + '/' + ((Object) stringExtra) + "?dark=" + str + "&token=" + ((Object) d10));
                        if (longExtra != -1) {
                            sb2.append(l.m("&anime_id=", Long.valueOf(longExtra)));
                        }
                        String sb3 = sb2.toString();
                        l.e(sb3, "StringBuilder().apply(builderAction).toString()");
                        setTitle("");
                        setSupportActionBar(c().f8269d);
                        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
                        if (supportActionBar != null) {
                            supportActionBar.s(true);
                        }
                        c().f8269d.setNavigationOnClickListener(new View.OnClickListener() { // from class: c7.a
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                WebViewActivity.u(WebViewActivity.this, view);
                            }
                        });
                        if (this.f4370l == null) {
                            WebView webView = c().f8270e;
                            l.e(webView, "binding.webview");
                            k7.f.a(webView);
                            c().f8270e.setWebChromeClient(new d());
                        } else {
                            WebView webView2 = c().f8270e;
                            Bundle bundle2 = this.f4370l;
                            l.c(bundle2);
                            webView2.restoreState(bundle2);
                        }
                        if (this.f4370l == null) {
                            c().f8270e.setWebViewClient(new e());
                            c().f8270e.loadUrl(sb3);
                        }
                        c().f8267b.getBinding().f8511b.setOnClickListener(new c());
                        c().f8267b.b();
                        return;
                    }
                }
            }
            finish();
        } catch (Exception unused) {
            k7.b.o(this, R.string.information_webview_required, 1);
            finish();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        l.f(menu, "menu");
        getMenuInflater().inflate(R.menu.webview, menu);
        return true;
    }

    @Override // androidx.appcompat.app.e, androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        WebView webView = c().f8270e;
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.f(menuItem, "item");
        switch (menuItem.getItemId()) {
            case R.id.action_web_back /* 2131361904 */:
                c().f8270e.goBack();
                break;
            case R.id.action_web_forward /* 2131361905 */:
                c().f8270e.goForward();
                break;
            case R.id.action_web_refresh /* 2131361906 */:
                v();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        Drawable icon;
        Drawable icon2;
        MenuItem findItem = menu == null ? null : menu.findItem(R.id.action_web_back);
        MenuItem findItem2 = menu != null ? menu.findItem(R.id.action_web_forward) : null;
        if (findItem != null) {
            findItem.setEnabled(c().f8270e.canGoBack());
        }
        if (findItem2 != null) {
            findItem2.setEnabled(c().f8270e.canGoForward());
        }
        int colorFromAttr = SupportExtentionKt.getColorFromAttr(this, R.attr.colorOnPrimary);
        int j10 = h0.d.j(colorFromAttr, 127);
        if (findItem != null && (icon2 = findItem.getIcon()) != null) {
            i0.a.n(icon2, c().f8270e.canGoBack() ? colorFromAttr : j10);
        }
        if (findItem2 != null && (icon = findItem2.getIcon()) != null) {
            if (!c().f8270e.canGoForward()) {
                colorFromAttr = j10;
            }
            i0.a.n(icon, colorFromAttr);
        }
        return super.onPrepareOptionsMenu(menu);
    }

    public final r4.b r() {
        return (r4.b) this.f4372n.getValue();
    }

    public final ja.f s() {
        return (ja.f) this.f4371m.getValue();
    }

    public final t4.b t() {
        return (t4.b) this.f4373o.getValue();
    }

    public final void v() {
        c().f8270e.reload();
        this.f4374p = true;
    }
}
