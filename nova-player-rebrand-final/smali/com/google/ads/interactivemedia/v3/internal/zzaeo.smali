.class final Lcom/google/ads/interactivemedia/v3/internal/zzaeo;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->$r8$clinit:I

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaez;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaez;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaex;

    return-void
.end method

.method static zzA(ILcom/google/ads/interactivemedia/v3/internal/zzadx;Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzabg;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzar(Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzB()Lcom/google/ads/interactivemedia/v3/internal/zzaex;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzaex;

    return-object v0
.end method

.method static zzC(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, p1, :cond_1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method static zzD(Lcom/google/ads/interactivemedia/v3/internal/zzacf;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    iget-object p0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzacp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzacj;

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzaet;

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacp;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method static zzE(Lcom/google/ads/interactivemedia/v3/internal/zzaex;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object p0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 2
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzaey;Lcom/google/ads/interactivemedia/v3/internal/zzaey;)Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zzl(Lcom/google/ads/interactivemedia/v3/internal/zzaey;)Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    .line 9
    :cond_1
    :goto_0
    iput-object p0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    return-void
.end method

.method static zzF(Ljava/lang/Object;ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzacw;Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaex;)Ljava/lang/Object;
    .locals 6

    if-nez p3, :cond_0

    return-object p4

    .line 1
    :cond_0
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzacw;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v1, v2, :cond_1

    .line 4
    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p0, p1, v4, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->zzG(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaex;)Ljava/lang/Object;

    move-result-object p4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v0, :cond_4

    .line 6
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    return-object p4

    .line 7
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacw;->zza(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 9
    invoke-static {p0, p1, v0, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzaeo;->zzG(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaex;)Ljava/lang/Object;

    move-result-object p4

    .line 10
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    return-object p4
.end method

.method static zzG(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaex;)Ljava/lang/Object;
    .locals 2

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p4, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaex;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    int-to-long v0, p2

    .line 2
    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaex;->zza(Ljava/lang/Object;IJ)V

    return-object p3
.end method

.method public static zza(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzC(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzB(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzc(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzy(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzd(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzz(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zze(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzL(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzf(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzA(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzg(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzJ(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzh(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzw(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzi(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzH(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzj(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzK(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzk(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzx(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzl(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzI(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzm(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzD(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzn(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/zzafk;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzafk;->zzE(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static zzo(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadm;

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadm;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadm;->zzd(I)J

    move-result-wide v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzp(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadm;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadm;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadm;->zzd(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzq(Ljava/util/List;)I
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzadm;

    const/16 v3, 0x3f

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadm;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzadm;->zzd(I)J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    .line 6
    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    .line 3
    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzr(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzact;

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzact;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzact;->zzf(I)I

    move-result v3

    int-to-long v3, v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 3
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzs(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzact;

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzact;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzact;->zzf(I)I

    move-result v3

    int-to-long v3, v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 3
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzw(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzt(Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzact;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzact;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzact;->zzf(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzu(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzact;

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzact;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzact;->zzf(I)I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    .line 6
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    .line 3
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzv(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static zzw(ILjava/util/List;Z)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzx(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static zzy(ILjava/util/List;Z)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzz(ILjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I
    .locals 1

    shl-int/lit8 p0, p0, 0x3

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzadi;

    .line 2
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzadi;->zzb()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p2

    :goto_0
    add-int/2addr p2, p1

    add-int/2addr p0, p2

    return p0

    .line 5
    :cond_0
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzabg;

    .line 6
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p0

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzar(Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I

    move-result p1

    .line 8
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzv(I)I

    move-result p2

    goto :goto_0
.end method
