.class final Lcom/google/ads/interactivemedia/v3/internal/zzaeb;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzaem;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaex;

.field private final zzc:Z

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzacf;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzaex;Lcom/google/ads/interactivemedia/v3/internal/zzacf;Lcom/google/ads/interactivemedia/v3/internal/zzadx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaex;

    instance-of p1, p3, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzc:Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    return-void
.end method

.method static zzh(Lcom/google/ads/interactivemedia/v3/internal/zzaex;Lcom/google/ads/interactivemedia/v3/internal/zzacf;Lcom/google/ads/interactivemedia/v3/internal/zzadx;)Lcom/google/ads/interactivemedia/v3/internal/zzaeb;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzaex;Lcom/google/ads/interactivemedia/v3/internal/zzacf;Lcom/google/ads/interactivemedia/v3/internal/zzadx;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzau()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadx;->zzaM()Lcom/google/ads/interactivemedia/v3/internal/zzadw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadw;->zzao()Lcom/google/ads/interactivemedia/v3/internal/zzadx;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzc:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    .line 5
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/zzacp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzc:Z

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaet;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaex;

    invoke-static {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->zzE(Lcom/google/ads/interactivemedia/v3/internal/zzaex;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->zzD(Lcom/google/ads/interactivemedia/v3/internal/zzacf;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzh()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzc:Z

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzf()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzafk;)V
    .locals 5

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzacp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zzc()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzaci;

    .line 6
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    move-result-object v3

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzafj;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzafj;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    instance-of v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzadf;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zza()I

    move-result v2

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzadf;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadf;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzadh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v1

    .line 8
    invoke-interface {p2, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzv(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaci;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzv(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzafk;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaeh;Lcom/google/ads/interactivemedia/v3/internal/zzace;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaex;

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaex;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;[BIILcom/google/ads/interactivemedia/v3/internal/zzabj;)V
    .locals 0

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaex;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaex;->zzj(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzaeb;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzacf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacf;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zze()Z

    move-result p1

    return p1
.end method
