package com.anslayer.ui.servers;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import androidx.appcompat.app.e;
import com.google.android.gms.common.internal.ImagesContract;
import d7.b;
import j4.c3;
import jc.g;
import jc.l;

/* compiled from: WebViewPlayerActivity.kt */
/* loaded from: classes.dex */
public final class WebViewPlayerActivity extends e {

    /* renamed from: g, reason: collision with root package name */
    public static final a f4348g = new a(null);

    /* renamed from: f, reason: collision with root package name */
    public c3 f4349f;

    /* compiled from: WebViewPlayerActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, String str) {
            l.f(context, "context");
            l.f(str, ImagesContract.URL);
            Intent intent = new Intent(context, (Class<?>) WebViewPlayerActivity.class);
            intent.putExtra(ImagesContract.URL, str);
            return intent;
        }
    }

    public final c3 b() {
        c3 c3Var = this.f4349f;
        if (c3Var != null) {
            return c3Var;
        }
        l.v("binding");
        return null;
    }

    @SuppressLint({"InlinedApi"})
    public final void c() {
        b().f8220c.setSystemUiVisibility(4871);
    }

    public final void d(c3 c3Var) {
        l.f(c3Var, "<set-?>");
        this.f4349f = c3Var;
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c3 b10 = c3.b(getLayoutInflater());
        l.e(b10, "inflate(layoutInflater)");
        d(b10);
        setContentView(b().f8220c);
        b.f(b.f5686d.a(), this, null, 2, null);
        boolean z10 = true;
        b().f8222e.setAdBlockerEnabled(true);
        WebSettings settings = b().f8222e.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        c();
        String stringExtra = getIntent().getStringExtra(ImagesContract.URL);
        if (stringExtra != null && stringExtra.length() != 0) {
            z10 = false;
        }
        if (z10) {
            finish();
        } else {
            b().f8222e.loadUrl(stringExtra);
        }
    }

    @Override // androidx.appcompat.app.e, androidx.fragment.app.e, android.app.Activity
    public void onDestroy() {
        AdBlockerWebView adBlockerWebView;
        super.onDestroy();
        c3 b10 = b();
        if (b10 == null || (adBlockerWebView = b10.f8222e) == null) {
            return;
        }
        adBlockerWebView.destroy();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        c();
    }
}
