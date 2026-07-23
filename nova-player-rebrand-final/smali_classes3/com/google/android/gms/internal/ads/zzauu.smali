.class public final Lcom/google/android/gms/internal/ads/zzauu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauu;->zza:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final zza(JJJ)V
    .locals 15

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v0, v0, v8

    not-int v8, v1

    and-int/2addr v2, v8

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    add-int/2addr v2, v1

    sub-int/2addr v2, v6

    add-int/2addr v7, v2

    const v1, 0x1afe3625

    rem-int/2addr v0, v1

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaur;

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzaur;-><init>(JJJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauu;->zza:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    xor-int/2addr v0, v7

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaus;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaus;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 4
        0x6ebe4208
        0x40a95b1
        0x310a3a42
        0x4640a5b1
        0x62e0284e
        -0x5a434c1d
        0x1773f284
        0x5a9cc3e5
        0x1afe3625
    .end array-data
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzaur;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->zza:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaur;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzauq;->zza:Lcom/google/android/gms/internal/ads/zzauq;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaur;

    return-object v0
.end method
