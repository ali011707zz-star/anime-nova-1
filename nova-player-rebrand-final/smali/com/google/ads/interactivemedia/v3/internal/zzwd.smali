.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzwd;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzxg;


# instance fields
.field private final synthetic zza:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwd;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzwd;->zza:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;-><init>(Ljava/lang/String;)V

    throw v0
.end method
