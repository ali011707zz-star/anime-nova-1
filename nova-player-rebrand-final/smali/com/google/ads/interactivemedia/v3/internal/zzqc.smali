.class final Lcom/google/ads/interactivemedia/v3/internal/zzqc;
.super Lcom/google/ads/interactivemedia/v3/internal/zzpx;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final zza:Ljava/lang/Object;

.field zzb:I

.field final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzql;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzql;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpx;-><init>()V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zza:[Ljava/lang/Object;

    .line 2
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza:Ljava/lang/Object;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzb:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzb:[Ljava/lang/Object;

    .line 2
    aget-object v0, v1, v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzb:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzf(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzb:[Ljava/lang/Object;

    .line 3
    aget-object v0, v3, v0

    .line 4
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p1

    :cond_1
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzb:I

    .line 5
    invoke-virtual {v1, v3, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzk(ILjava/lang/Object;Z)V

    return-object v0
.end method

.method final zza()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzb:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzc:I

    if-gt v0, v2, :cond_1

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zza:[Ljava/lang/Object;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzql;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza:Ljava/lang/Object;

    .line 2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzql;->zzc(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzb:I

    return-void
.end method
