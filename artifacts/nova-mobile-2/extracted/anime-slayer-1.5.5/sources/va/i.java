package va;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import ic.l;
import java.io.InputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import qc.t;
import ra.r;
import vb.p;

/* compiled from: WebViewYouTubePlayer.kt */
/* loaded from: classes.dex */
public final class i extends WebView implements ra.f, r.b {

    /* renamed from: f, reason: collision with root package name */
    public l<? super ra.f, p> f15002f;

    /* renamed from: g, reason: collision with root package name */
    public final HashSet<sa.d> f15003g;

    /* renamed from: h, reason: collision with root package name */
    public final Handler f15004h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f15005i;

    /* compiled from: WebViewYouTubePlayer.kt */
    /* loaded from: classes.dex */
    public static final class a extends WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public Bitmap getDefaultVideoPoster() {
            Bitmap defaultVideoPoster = super.getDefaultVideoPoster();
            return defaultVideoPoster == null ? Bitmap.createBitmap(1, 1, Bitmap.Config.RGB_565) : defaultVideoPoster;
        }
    }

    public /* synthetic */ i(Context context, AttributeSet attributeSet, int i10, int i11, jc.g gVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    public static final void p(i iVar, String str, float f10) {
        jc.l.f(iVar, "this$0");
        jc.l.f(str, "$videoId");
        iVar.loadUrl("javascript:cueVideo('" + str + "', " + f10 + ')');
    }

    public static final void t(i iVar, String str, float f10) {
        jc.l.f(iVar, "this$0");
        jc.l.f(str, "$videoId");
        iVar.loadUrl("javascript:loadVideo('" + str + "', " + f10 + ')');
    }

    public static final void u(i iVar) {
        jc.l.f(iVar, "this$0");
        iVar.loadUrl("javascript:pauseVideo()");
    }

    public static final void v(i iVar) {
        jc.l.f(iVar, "this$0");
        iVar.loadUrl("javascript:playVideo()");
    }

    public static final void w(i iVar, float f10) {
        jc.l.f(iVar, "this$0");
        iVar.loadUrl("javascript:seekTo(" + f10 + ')');
    }

    public static final void x(i iVar, ra.b bVar) {
        jc.l.f(iVar, "this$0");
        jc.l.f(bVar, "$playbackRate");
        iVar.loadUrl("javascript:setPlaybackRate(" + ra.e.a(bVar) + ')');
    }

    public static final void y(i iVar, int i10) {
        jc.l.f(iVar, "this$0");
        iVar.loadUrl("javascript:setVolume(" + i10 + ')');
    }

    @Override // ra.f
    public void a(final float f10) {
        this.f15004h.post(new Runnable() { // from class: va.d
            @Override // java.lang.Runnable
            public final void run() {
                i.w(i.this, f10);
            }
        });
    }

    @Override // ra.f
    public boolean b(sa.d dVar) {
        jc.l.f(dVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return this.f15003g.remove(dVar);
    }

    @Override // ra.r.b
    public void c() {
        l<? super ra.f, p> lVar = this.f15002f;
        if (lVar == null) {
            jc.l.v("youTubePlayerInitListener");
            lVar = null;
        }
        lVar.invoke(this);
    }

    @Override // ra.f
    public void d() {
        this.f15004h.post(new Runnable() { // from class: va.b
            @Override // java.lang.Runnable
            public final void run() {
                i.u(i.this);
            }
        });
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f15003g.clear();
        this.f15004h.removeCallbacksAndMessages(null);
        super.destroy();
    }

    @Override // ra.f
    public void e() {
        this.f15004h.post(new Runnable() { // from class: va.c
            @Override // java.lang.Runnable
            public final void run() {
                i.v(i.this);
            }
        });
    }

    @Override // ra.f
    public boolean f(sa.d dVar) {
        jc.l.f(dVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return this.f15003g.add(dVar);
    }

    @Override // ra.f
    public void g(final String str, final float f10) {
        jc.l.f(str, "videoId");
        this.f15004h.post(new Runnable() { // from class: va.f
            @Override // java.lang.Runnable
            public final void run() {
                i.t(i.this, str, f10);
            }
        });
    }

    @Override // ra.r.b
    public ra.f getInstance() {
        return this;
    }

    @Override // ra.r.b
    public Collection<sa.d> getListeners() {
        Collection<sa.d> unmodifiableCollection = Collections.unmodifiableCollection(new HashSet(this.f15003g));
        jc.l.e(unmodifiableCollection, "unmodifiableCollection(H…(youTubePlayerListeners))");
        return unmodifiableCollection;
    }

    @Override // ra.f
    public void h(final String str, final float f10) {
        jc.l.f(str, "videoId");
        this.f15004h.post(new Runnable() { // from class: va.g
            @Override // java.lang.Runnable
            public final void run() {
                i.p(i.this, str, f10);
            }
        });
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowVisibilityChanged(int i10) {
        if (this.f15005i && (i10 == 8 || i10 == 4)) {
            return;
        }
        super.onWindowVisibilityChanged(i10);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public final void q(ta.a aVar) {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        getSettings().setCacheMode(2);
        addJavascriptInterface(new r(this), "YouTubePlayerBridge");
        ua.d dVar = ua.d.f14511a;
        InputStream openRawResource = getResources().openRawResource(qa.f.f12641a);
        jc.l.e(openRawResource, "resources.openRawResourc…R.raw.ayp_youtube_player)");
        loadDataWithBaseURL(aVar.b(), t.v(dVar.b(openRawResource), "<<injectedPlayerVars>>", aVar.toString(), false, 4, null), "text/html", "utf-8", null);
        setWebChromeClient(new a());
    }

    public final void r(l<? super ra.f, p> lVar, ta.a aVar) {
        jc.l.f(lVar, "initListener");
        this.f15002f = lVar;
        if (aVar == null) {
            aVar = ta.a.f14101b.a();
        }
        q(aVar);
    }

    public final boolean s() {
        return this.f15005i;
    }

    public final void setBackgroundPlaybackEnabled$core_release(boolean z10) {
        this.f15005i = z10;
    }

    public void setPlaybackRate(final ra.b bVar) {
        jc.l.f(bVar, "playbackRate");
        this.f15004h.post(new Runnable() { // from class: va.h
            @Override // java.lang.Runnable
            public final void run() {
                i.x(i.this, bVar);
            }
        });
    }

    public void setVolume(final int i10) {
        if (i10 >= 0 && i10 <= 100) {
            this.f15004h.post(new Runnable() { // from class: va.e
                @Override // java.lang.Runnable
                public final void run() {
                    i.y(i.this, i10);
                }
            });
            return;
        }
        throw new IllegalArgumentException("Volume must be between 0 and 100".toString());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        jc.l.f(context, "context");
        this.f15003g = new HashSet<>();
        this.f15004h = new Handler(Looper.getMainLooper());
    }
}
