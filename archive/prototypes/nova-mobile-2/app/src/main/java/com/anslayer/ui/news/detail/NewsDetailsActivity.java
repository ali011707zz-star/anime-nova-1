package com.anslayer.ui.news.detail;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.anslayer.R;
import com.anslayer.ui.news.detail.NewsDetailsActivity;
import com.anslayer.widget.SlayerImage;
import e7.f;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.widget.SingleLineTextView;
import j4.j1;
import jc.g;
import jc.l;
import l7.b;
import org.apache.http.protocol.HTTP;

/* compiled from: NewsDetailsActivity.kt */
/* loaded from: classes.dex */
public final class NewsDetailsActivity extends o5.a<j1> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4237l = new a(null);

    /* compiled from: NewsDetailsActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, s4.a aVar) {
            l.f(context, "context");
            l.f(aVar, "news");
            Intent intent = new Intent(context, (Class<?>) NewsDetailsActivity.class);
            intent.putExtra("arg_model", aVar);
            return intent;
        }
    }

    public static final void q(NewsDetailsActivity newsDetailsActivity, View view) {
        l.f(newsDetailsActivity, "this$0");
        super.onBackPressed();
    }

    public static final void r(NewsDetailsActivity newsDetailsActivity, s4.a aVar, View view) {
        l.f(newsDetailsActivity, "this$0");
        newsDetailsActivity.v(aVar);
    }

    public static final void s(NewsDetailsActivity newsDetailsActivity, s4.a aVar, View view) {
        l.f(newsDetailsActivity, "this$0");
        newsDetailsActivity.u(aVar);
    }

    public static final void t(NewsDetailsActivity newsDetailsActivity, s4.a aVar, View view) {
        l.f(newsDetailsActivity, "this$0");
        newsDetailsActivity.w(aVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x014b, code lost:
    
        if ((r0.length() == 0) == false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0142  */
    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCreate(Bundle bundle) {
        boolean z10;
        String i10;
        super.onCreate(bundle);
        j1 c10 = j1.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8474j);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        boolean z11 = true;
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8474j.setNavigationOnClickListener(new View.OnClickListener() { // from class: f6.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NewsDetailsActivity.q(NewsDetailsActivity.this, view);
            }
        });
        Bundle extras = getIntent().getExtras();
        l.c(extras);
        final s4.a aVar = (s4.a) extras.getParcelable("arg_model");
        if (aVar == null) {
            finish();
            return;
        }
        String e10 = aVar.e();
        if (!(e10 == null || e10.length() == 0)) {
            try {
                WebView webView = new WebView(this);
                webView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                webView.getSettings().setJavaScriptEnabled(true);
                c().b().addView(webView);
                NestedScrollView nestedScrollView = c().f8466b;
                l.e(nestedScrollView, "binding.nestedScrollView");
                nestedScrollView.setVisibility(8);
                webView.loadData(aVar.e(), "text/html; charset=utf-8", HTTP.UTF_8);
            } catch (Exception unused) {
                NestedScrollView nestedScrollView2 = c().f8466b;
                l.e(nestedScrollView2, "binding.nestedScrollView");
                nestedScrollView2.setVisibility(0);
            }
        }
        c().f8470f.setOnClickListener(new View.OnClickListener() { // from class: f6.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NewsDetailsActivity.r(NewsDetailsActivity.this, aVar, view);
            }
        });
        c().f8469e.setOnClickListener(new View.OnClickListener() { // from class: f6.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NewsDetailsActivity.s(NewsDetailsActivity.this, aVar, view);
            }
        });
        c().f8471g.setOnClickListener(new View.OnClickListener() { // from class: f6.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NewsDetailsActivity.t(NewsDetailsActivity.this, aVar, view);
            }
        });
        SlayerImage slayerImage = c().f8473i;
        l.e(slayerImage, "binding.seriesImage");
        b.b(slayerImage, aVar.g());
        c().f8472h.setText(aVar.j());
        SingleLineTextView singleLineTextView = c().f8470f;
        l.e(singleLineTextView, "binding.newsOpenVideo");
        String l10 = aVar.l();
        if (l10 != null) {
            if (!(l10.length() == 0)) {
                z10 = true;
                singleLineTextView.setVisibility(z10 ? 0 : 8);
                i10 = aVar.i();
                if (i10 != null) {
                }
                z11 = false;
                if (z11) {
                    SingleLineTextView singleLineTextView2 = c().f8469e;
                    l.e(singleLineTextView2, "binding.newsOpenSource");
                    SupportExtentionKt.visible(singleLineTextView2);
                    SingleLineTextView singleLineTextView3 = c().f8471g;
                    l.e(singleLineTextView3, "binding.newsShare");
                    SupportExtentionKt.visible(singleLineTextView3);
                }
                c().f8467c.setText(f.f6196a.e(aVar.a()));
                c().f8468d.setText(aVar.c());
            }
        }
        z10 = false;
        singleLineTextView.setVisibility(z10 ? 0 : 8);
        i10 = aVar.i();
        if (i10 != null) {
        }
        z11 = false;
        if (z11) {
        }
        c().f8467c.setText(f.f6196a.e(aVar.a()));
        c().f8468d.setText(aVar.c());
    }

    public final void u(s4.a aVar) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(aVar == null ? null : aVar.i()));
            startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            k7.b.q(this, R.string.text_processing_error, 0, 2, null);
        }
    }

    public final void v(s4.a aVar) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(aVar == null ? null : aVar.l()));
            startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            k7.b.q(this, R.string.text_processing_error, 0, 2, null);
        }
    }

    public final void w(s4.a aVar) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) (aVar == null ? null : aVar.j()));
            sb2.append(" \n\n\n ");
            sb2.append((Object) (aVar == null ? null : aVar.c()));
            String sb3 = sb2.toString();
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", sb3);
            intent.setType(HTTP.PLAIN_TEXT_TYPE);
            startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            k7.b.q(this, R.string.text_processing_error, 0, 2, null);
        }
    }
}
