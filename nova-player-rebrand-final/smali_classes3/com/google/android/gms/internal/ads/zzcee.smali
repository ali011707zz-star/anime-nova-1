.class final Lcom/google/android/gms/internal/ads/zzcee;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method public synthetic close()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat$$ExternalSyntheticAutoCloseableForwarder1;->m(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
