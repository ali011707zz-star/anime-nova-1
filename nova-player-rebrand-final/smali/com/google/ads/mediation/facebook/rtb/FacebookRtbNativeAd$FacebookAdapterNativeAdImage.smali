.class Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "FacebookRtbNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookAdapterNativeAdImage"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 400
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;Landroid/net/Uri;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;->this$0:Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScale()D
    .locals 2

    .line 0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage;->uri:Landroid/net/Uri;

    return-object v0
.end method
