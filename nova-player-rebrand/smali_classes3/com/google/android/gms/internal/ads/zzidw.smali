.class abstract Lcom/google/android/gms/internal/ads/zzidw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzief;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zziaa;->$r8$clinit:I

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzieh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzieh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzidw;->zzb:Lcom/google/android/gms/internal/ads/zzief;

    return-void
.end method

.method static zzA(ILjava/util/List;Z)I
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
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzB(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static zzC(ILjava/util/List;Z)I
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
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzD(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhzw;

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result p0

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaT(Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p0, p2

    return p0
.end method

.method static zzE(ILcom/google/android/gms/internal/ads/zzidc;Lcom/google/android/gms/internal/ads/zzidu;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhzw;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaT(Lcom/google/android/gms/internal/ads/zzidu;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzF()Lcom/google/android/gms/internal/ads/zzief;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzidw;->zzb:Lcom/google/android/gms/internal/ads/zzief;

    return-object v0
.end method

.method static zzG(Ljava/lang/Object;Ljava/lang/Object;)Z
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

.method static zzH(Lcom/google/android/gms/internal/ads/zzibc;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method static zzI(Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzieg;->zza()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzieg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzieg;->zza()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzieg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzieg;->zzc(Lcom/google/android/gms/internal/ads/zzieg;Lcom/google/android/gms/internal/ads/zzieg;)Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzieg;->zzm(Lcom/google/android/gms/internal/ads/zzieg;)Lcom/google/android/gms/internal/ads/zzieg;

    .line 9
    :cond_1
    :goto_0
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    return-void
.end method

.method static zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzibx;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;
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

    .line 4
    invoke-interface {p3, v4}, Lcom/google/android/gms/internal/ads/zzibx;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v1, v2, :cond_1

    .line 5
    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0, p1, v4, p4, p5}, Lcom/google/android/gms/internal/ads/zzidw;->zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;

    move-result-object p4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v0, :cond_4

    .line 7
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    return-object p4

    .line 8
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/zzibx;->zza(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 11
    invoke-static {p0, p1, v0, p4, p5}, Lcom/google/android/gms/internal/ads/zzidw;->zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;

    move-result-object p4

    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    return-object p4
.end method

.method static zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzief;)Ljava/lang/Object;
    .locals 2

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzief;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    int-to-long v0, p2

    .line 2
    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzief;->zza(Ljava/lang/Object;IJ)V

    return-object p3
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzC(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzB(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzy(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzz(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzL(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzA(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzJ(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzw(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzH(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzK(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzx(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzI(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzD(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzieu;->zzE(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static zzo(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzieu;->zzF(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static zzp(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzieu;->zzG(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static zzq(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Lcom/google/android/gms/internal/ads/zzidu;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/ads/zziax;

    invoke-virtual {v2, p0, v1, p3}, Lcom/google/android/gms/internal/ads/zziax;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzr(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzieu;Lcom/google/android/gms/internal/ads/zzidu;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/ads/zziax;

    invoke-virtual {v2, p0, v1, p3}, Lcom/google/android/gms/internal/ads/zziax;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzidu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
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
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzicq;

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/ads/zzicq;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzicq;->zzc(I)J

    move-result-wide v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

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
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzt(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzicq;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/zzicq;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzicq;->zzc(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

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

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzu(Ljava/util/List;)I
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzicq;

    const/16 v3, 0x3f

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/ads/zzicq;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzicq;->zzc(I)J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

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
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzv(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzibs;

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/ads/zzibs;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzf(I)I

    move-result v3

    int-to-long v3, v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

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
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzw(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzibs;

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/ads/zzibs;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzf(I)I

    move-result v3

    int-to-long v3, v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

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
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zziaw;->zzB(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzx(Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzibs;

    if-eqz v2, :cond_2

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/zzibs;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzf(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

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

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzy(Ljava/util/List;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzibs;

    if-eqz v2, :cond_2

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/ads/zzibs;

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzibs;->zzf(I)I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

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
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method static zzz(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method
