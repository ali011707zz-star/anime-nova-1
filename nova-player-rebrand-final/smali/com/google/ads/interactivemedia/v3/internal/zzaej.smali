.class final Lcom/google/ads/interactivemedia/v3/internal/zzaej;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method static final synthetic zza(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;Ljava/util/ArrayDeque;)Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 2

    .line 1
    invoke-static {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaej;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Ljava/util/ArrayDeque;)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaej;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Ljava/util/ArrayDeque;)V

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 4
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;[B)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Ljava/util/ArrayDeque;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzg()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaej;->zzc(ILjava/util/ArrayDeque;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzh(I)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzh(I)I

    move-result v0

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 10
    invoke-direct {v4, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;[B)V

    move-object v1, v4

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 11
    invoke-direct {v0, v1, p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;[B)V

    .line 12
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result p0

    .line 13
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaej;->zzc(ILjava/util/ArrayDeque;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 14
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzh(I)I

    move-result p0

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v1

    if-ge v1, p0, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 17
    invoke-direct {v1, p0, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;[B)V

    move-object v0, v1

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_3
    :goto_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_4
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    if-eqz v0, :cond_5

    .line 19
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 20
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzu()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaej;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Ljava/util/ArrayDeque;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzv()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaej;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Ljava/util/ArrayDeque;)V

    return-void

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Has a new type of ByteString been created? Found "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final zzc(ILjava/util/ArrayDeque;)I
    .locals 0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zza:[I

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method
