.class public Lcom/facebook/ads/NativeAd;
.super Lcom/facebook/ads/NativeAdBase;
.source "NativeAd.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAd$NativeOptions;,
        Lcom/facebook/ads/NativeAd$AdCreativeType;
    }
.end annotation


# instance fields
.field private mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

.field private mNativeOptions:Lcom/facebook/ads/NativeAd$NativeOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V

    .line 90
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p2, p0, v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdApi(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd$NativeOptions;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V

    .line 100
    iput-object p3, p0, Lcom/facebook/ads/NativeAd;->mNativeOptions:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 102
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object p3, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p2, p0, p3}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdApi(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 0

    .line 77
    invoke-direct {p0, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 79
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdApi(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;Lcom/facebook/ads/NativeAd$NativeOptions;)V
    .locals 0

    .line 127
    invoke-direct {p0, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 128
    iput-object p3, p0, Lcom/facebook/ads/NativeAd;->mNativeOptions:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 130
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdApi(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdApi(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/NativeAd$NativeOptions;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iput-object p3, p0, Lcom/facebook/ads/NativeAd;->mNativeOptions:Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 117
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdApi(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    return-void
.end method


# virtual methods
.method public getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdApi;->getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    return-object v0
.end method

.method public getNativeOptions()Lcom/facebook/ads/NativeAd$NativeOptions;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeOptions:Lcom/facebook/ads/NativeAd$NativeOptions;

    return-object v0
.end method

.method getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdApi;->getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    return-object v0
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 172
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 173
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/NativeAdApi;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;)V
    .locals 1

    .line 243
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 244
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/NativeAdApi;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 267
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/NativeAdApi;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 188
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 189
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/NativeAdApi;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 225
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/NativeAdApi;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 205
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->mNativeAdApi:Lcom/facebook/ads/internal/api/NativeAdApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/NativeAdApi;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method
