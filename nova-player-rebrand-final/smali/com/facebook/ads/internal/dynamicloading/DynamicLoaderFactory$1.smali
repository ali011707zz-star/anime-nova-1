.class Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;
.super Ljava/lang/Object;
.source "DynamicLoaderFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fromContentProvider:Z

.field final synthetic val$initListener:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

.field final synthetic val$initSettings:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$fromContentProvider:Z

    iput-object p3, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$initSettings:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    iput-object p4, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$initListener:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/common/ANActivityLifecycleCallbacksListener;->registerActivityCallbacks(Landroid/content/Context;)V

    .line 104
    const-class v1, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, v2

    move v4, v3

    :goto_0
    const/4 v0, 0x3

    if-ge v4, v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->access$000(Landroid/content/Context;Z)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v6, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 114
    :try_start_1
    iget-boolean v5, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$fromContentProvider:Z

    if-nez v5, :cond_1

    .line 116
    iget-object v5, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    .line 117
    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->access$100(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 116
    invoke-static {v5, v6, v7, v8}, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->reportDexLoadingIssue(Landroid/content/Context;Ljava/lang/String;D)V

    const/4 v5, 0x1

    .line 118
    invoke-static {v5}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->setFallbackMode(Z)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0xc8

    .line 122
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    iget-object v5, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$context:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$fromContentProvider:Z

    iget-object v9, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$initSettings:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    iget-object v10, p0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory$1;->val$initListener:Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->access$200(Landroid/content/Context;Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;Ljava/lang/Throwable;ZLcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V

    .line 134
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 126
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
