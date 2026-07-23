.class public abstract Lcom/google/android/gms/internal/ads/zzgup;
.super Lcom/google/android/gms/internal/ads/zzgub;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Set;
.implements Lj$/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/ads/zzguf;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgub;-><init>()V

    return-void
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzgup;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwg;->zza:Lcom/google/android/gms/internal/ads/zzgwg;

    return-object v0
.end method

.method public static zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzj(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgup;->zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p0

    return-object p0
.end method

.method public static zzk(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgup;->zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p0

    return-object p0
.end method

.method public static zzl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 3

    const/4 v0, 0x5

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgup;->zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p0

    return-object p0
.end method

.method public static varargs zzm(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 4

    array-length v0, p6

    add-int/lit8 v1, v0, 0x6

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const/4 p0, 0x4

    aput-object p4, v2, p0

    const/4 p0, 0x5

    aput-object p5, v2, p0

    const/4 p0, 0x6

    .line 1
    invoke-static {p6, v3, v2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgup;->zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p0

    return-object p0
.end method

.method static zzn(I)I
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    const-string v1, "collection too large"

    .line 3
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzb(ZLjava/lang/Object;)V

    return v0
.end method

.method public static zzo(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgup;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgup;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgub;->zzf()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 5
    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgup;->zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p0

    return-object p0
.end method

.method public static zzp([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 2

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgup;->zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    aget-object p0, p0, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwq;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwq;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwg;->zza:Lcom/google/android/gms/internal/ads/zzgwg;

    return-object p0
.end method

.method public static zzs(I)Lcom/google/android/gms/internal/ads/zzguo;
    .locals 2

    .line 1
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzgtb;->zzb(ILjava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguo;

    const/4 v1, 0x1

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzguo;-><init>(IZ)V

    return-object v0
.end method

.method static synthetic zzt(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgup;->zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzu(II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgup;->zzw(II)Z

    move-result p0

    return p0
.end method

.method private static varargs zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;
    .locals 13

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgup;->zzn(I)I

    move-result v2

    .line 5
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    move v3, v0

    move v5, v3

    move v8, v5

    :goto_0
    if-ge v3, p0, :cond_2

    .line 6
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 8
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgty;->zza(I)I

    move-result v10

    :goto_1
    and-int v11, v10, v7

    .line 9
    aget-object v12, v6, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 11
    aput-object v4, p1, v8

    .line 12
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_3

    .line 14
    aget-object p0, p1, v0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwq;

    .line 15
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwq;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    div-int/lit8 v2, v2, 0x2

    .line 16
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgup;->zzn(I)I

    move-result p0

    if-ge p0, v2, :cond_4

    .line 17
    invoke-static {v8, p1}, Lcom/google/android/gms/internal/ads/zzgup;->zzv(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p0

    return-object p0

    .line 18
    :cond_4
    array-length p0, p1

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzgup;->zzw(II)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5
    move-object v4, p1

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgwg;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgwg;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object v3

    .line 2
    :cond_6
    aget-object p0, p1, v0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgwq;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwq;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 1
    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwg;->zza:Lcom/google/android/gms/internal/ads/zzgwg;

    return-object p0
.end method

.method private static zzw(II)Z
    .locals 1

    .line 0
    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgup;->zzq()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgup;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgup;->zzq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgup;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwp;->zzd(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgwp;->zzc(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public abstract zza()Lcom/google/android/gms/internal/ads/zzgwt;
.end method

.method public zze()Lcom/google/android/gms/internal/ads/zzguf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgup;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgup;->zzr()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgup;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    :cond_0
    return-object v0
.end method

.method zzq()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method zzr()Lcom/google/android/gms/internal/ads/zzguf;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgub;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzguf;->zzt([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    return-object v0
.end method
