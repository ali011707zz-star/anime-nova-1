.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)Lcom/google/ads/interactivemedia/v3/impl/data/JavaScriptNativeBridgeUriComponent;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_JavaScriptNativeBridgeUriComponent;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V

    return-object v0
.end method


# virtual methods
.method public abstract baseUri()Landroid/net/Uri;
.end method

.method public abstract language()Ljava/lang/String;
.end method

.method public abstract packageName()Ljava/lang/String;
.end method

.method public abstract testingConfiguration()Lcom/google/ads/interactivemedia/v3/internal/zzpl;
.end method
