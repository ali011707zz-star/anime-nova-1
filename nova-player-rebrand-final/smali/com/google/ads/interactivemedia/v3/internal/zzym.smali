.class final Lcom/google/ads/interactivemedia/v3/internal/zzym;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzyn;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzyn;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzym;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzyn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzux;Lcom/google/ads/interactivemedia/v3/internal/zzaaz;)Lcom/google/ads/interactivemedia/v3/internal/zzvp;
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaaz;->zza()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/lang/Number;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzym;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzyn;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
