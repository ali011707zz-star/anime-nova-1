.class final Lcom/google/ads/interactivemedia/v3/internal/zzaez;
.super Lcom/google/ads/interactivemedia/v3/internal/zzaex;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaex;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    shl-int/lit8 p2, p2, 0x3

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzk(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzb(Ljava/lang/Object;II)V
    .locals 0

    shl-int/lit8 p2, p2, 0x3

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    or-int/lit8 p2, p2, 0x5

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzk(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzc(Ljava/lang/Object;IJ)V
    .locals 0

    shl-int/lit8 p2, p2, 0x3

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    or-int/lit8 p2, p2, 0x1

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzk(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;ILcom/google/ads/interactivemedia/v3/internal/zzabt;)V
    .locals 0

    shl-int/lit8 p2, p2, 0x3

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    or-int/lit8 p2, p2, 0x2

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzk(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic zze(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    shl-int/lit8 p2, p2, 0x3

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    or-int/lit8 p2, p2, 0x3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzk(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzf()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzd()V

    return-object p1
.end method

.method final bridge synthetic zzh(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object v0

    .line 2
    iput-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    :cond_0
    return-object v0
.end method

.method final synthetic zzi(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    return-void
.end method

.method final zzj(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzd()V

    return-void
.end method
