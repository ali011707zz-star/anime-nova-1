.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/IdentifierInfo;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_IdentifierInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract adsIdentityToken()Ljava/lang/String;
.end method

.method public abstract appSetId()Ljava/lang/String;
.end method

.method public abstract appSetIdScope()I
.end method

.method public abstract deviceId()Ljava/lang/String;
.end method

.method public abstract idType()Ljava/lang/String;
.end method

.method public abstract isLimitedAdTracking()Z
.end method
