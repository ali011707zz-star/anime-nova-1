.class abstract Lcom/google/android/gms/internal/ads/zzhiy;
.super Lcom/google/android/gms/internal/ads/zzhys;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static final zzb(Lcom/google/android/gms/internal/ads/zzhzq;)Lcom/google/android/gms/internal/ads/zzhyl;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzm()I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhiy;->zze(Lcom/google/android/gms/internal/ads/zzhzq;I)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhiy;->zzd(Lcom/google/android/gms/internal/ads/zzhzq;I)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzf()Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzhyn;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhja;->zza(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "illegal characters in string"

    .line 22
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v2, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzm()I

    move-result v3

    .line 9
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzhiy;->zze(Lcom/google/android/gms/internal/ads/zzhzq;I)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v4

    if-nez v4, :cond_4

    .line 10
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzhiy;->zzd(Lcom/google/android/gms/internal/ads/zzhzq;I)Lcom/google/android/gms/internal/ads/zzhyl;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzhyk;

    if-eqz v5, :cond_5

    .line 11
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhyk;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyk;->zza(Lcom/google/android/gms/internal/ads/zzhyl;)V

    goto :goto_3

    .line 12
    :cond_5
    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhyn;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzhyn;->zzc(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 13
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhyn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhyl;)V

    :goto_3
    if-eqz v4, :cond_1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 15
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_6

    move-object v1, v3

    goto :goto_0

    .line 19
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "too many recursions"

    .line 21
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 20
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duplicate key: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_8
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzhyk;

    if-eqz v2, :cond_9

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzc()V

    goto :goto_4

    .line 17
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zze()V

    .line 18
    :goto_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    .line 19
    :cond_a
    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhyl;

    goto/16 :goto_0
.end method

.method private static final zzd(Lcom/google/android/gms/internal/ads/zzhzq;I)Lcom/google/android/gms/internal/ads/zzhyl;
    .locals 2

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzk()V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhym;->zza:Lcom/google/android/gms/internal/ads/zzhym;

    return-object p0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhzr;->zza(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhyp;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzj()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhyp;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzi()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhyp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiz;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhiz;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhyp;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzi()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhja;->zza(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhyp;

    .line 8
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhyp;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "illegal characters in string"

    .line 7
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zze(Lcom/google/android/gms/internal/ads/zzhzq;I)Lcom/google/android/gms/internal/ads/zzhyl;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzd()V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzhyn;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhyn;-><init>()V

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzhyk;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhyk;-><init>()V

    return-object p0
.end method
