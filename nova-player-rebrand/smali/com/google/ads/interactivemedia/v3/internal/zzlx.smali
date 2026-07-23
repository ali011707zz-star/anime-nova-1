.class public final Lcom/google/ads/interactivemedia/v3/internal/zzlx;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzb:Ljava/lang/Object;

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc:I

    return-void
.end method

.method public static zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;J)Lcom/google/ads/interactivemedia/v3/internal/zzlx;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzme;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzmc;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzme;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzmd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzme;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzmd;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzmd;->zza()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzb:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzc:I

    add-int/lit8 v1, v1, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzb:Ljava/lang/Object;

    .line 5
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzmc;->zzb(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzb:Ljava/lang/Object;

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzmc;->zza(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
