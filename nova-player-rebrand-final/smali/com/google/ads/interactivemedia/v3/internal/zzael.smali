.class final Lcom/google/ads/interactivemedia/v3/internal/zzael;
.super Lcom/google/ads/interactivemedia/v3/internal/zzabt;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:[I


# instance fields
.field private final zzc:I

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

.field private final zzf:I

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zza:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzf:I

    .line 3
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzc:I

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzf()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzf()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzg:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V

    return-void
.end method

.method static zzd(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    .line 4
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    if-eqz v2, :cond_5

    .line 5
    move-object v2, p0

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 6
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v1, :cond_3

    .line 7
    invoke-static {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p0

    iget-object p1, v2, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 8
    invoke-direct {v0, p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V

    return-object v0

    :cond_3
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzf()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzf()I

    move-result v5

    if-le v4, v5, :cond_5

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzg:I

    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzf()I

    move-result v4

    if-gt v2, v4, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 16
    invoke-direct {p0, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 17
    invoke-direct {p1, v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V

    return-object p1

    .line 10
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzf()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzf()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 12
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzh(I)I

    move-result v1

    if-lt v0, v1, :cond_6

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 15
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/util/ArrayDeque;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    invoke-static {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaej;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;Ljava/util/ArrayDeque;)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p0

    return-object p0
.end method

.method static zzh(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zza:[I

    array-length v1, v0

    const/16 v1, 0x2f

    if-lt p0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 2
    :cond_0
    aget p0, v0, p0

    return p0
.end method

.method private static zzw(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v1

    add-int v2, v0, v1

    .line 3
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzp([BIII)V

    .line 5
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzp([BIII)V

    .line 6
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzc:I

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzr()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzr()I

    move-result v4

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzaek;

    const/4 v4, 0x0

    .line 4
    invoke-direct {v3, p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;[B)V

    .line 5
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzabr;

    move-result-object v5

    .line 6
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzaek;

    .line 7
    invoke-direct {v6, p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;[B)V

    .line 8
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzabr;

    move-result-object p1

    move v4, v2

    move v7, v4

    move v8, v7

    .line 9
    :goto_1
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v10

    sub-int/2addr v10, v7

    .line 10
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-nez v4, :cond_6

    .line 11
    invoke-virtual {v5, p1, v7, v11}, Lcom/google/ads/interactivemedia/v3/internal/zzabr;->zzh(Lcom/google/ads/interactivemedia/v3/internal/zzabt;II)Z

    move-result v12

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p1, v5, v4, v11}, Lcom/google/ads/interactivemedia/v3/internal/zzabr;->zzh(Lcom/google/ads/interactivemedia/v3/internal/zzabt;II)Z

    move-result v12

    :goto_2
    if-nez v12, :cond_7

    return v2

    :cond_7
    add-int/2addr v8, v11

    if-lt v8, v1, :cond_9

    if-ne v8, v1, :cond_8

    return v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9
    if-ne v11, v9, :cond_a

    .line 13
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzabr;

    move-result-object v4

    move-object v5, v4

    move v4, v2

    goto :goto_3

    :cond_a
    add-int/2addr v4, v11

    :goto_3
    if-ne v11, v10, :cond_b

    .line 15
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzaek;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzabr;

    move-result-object p1

    move v7, v2

    goto :goto_1

    :cond_b
    add-int/2addr v7, v11

    goto :goto_1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaei;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzael;)V

    return-object v0
.end method

.method public final zza(I)B
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzc:I

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzs(II)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzb(I)B

    move-result p1

    return p1
.end method

.method final zzb(I)B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzf:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb(I)B

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb(I)B

    move-result p1

    return p1
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzc:I

    return v0
.end method

.method protected final zze([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzf:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zze([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    sub-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zze([BIII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    sub-int/2addr v1, p2

    .line 3
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zze([BIII)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zze([BIII)V

    return-void
.end method

.method protected final zzf()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzg:I

    return v0
.end method

.method protected final zzg()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzg:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzc:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzh(I)I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzc:I

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzt(III)I

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-object p1

    :cond_0
    if-ne v1, v0, :cond_1

    return-object p0

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzf:I

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int/2addr p2, v0

    if-lt p1, v0, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    sub-int/2addr p1, v0

    .line 3
    invoke-virtual {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzael;

    .line 6
    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzael;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V

    return-object v0
.end method

.method final zzj(Lcom/google/ads/interactivemedia/v3/internal/zzabm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzj(Lcom/google/ads/interactivemedia/v3/internal/zzabm;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzj(Lcom/google/ads/interactivemedia/v3/internal/zzabm;)V

    return-void
.end method

.method protected final zzk(III)I
    .locals 2

    add-int v0, p2, p3

    .line 1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzf:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzk(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    sub-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzk(III)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    sub-int/2addr v1, p2

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzk(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    .line 4
    invoke-virtual {p2, p1, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzk(III)I

    move-result p1

    return p1
.end method

.method public final zzl()Lcom/google/ads/interactivemedia/v3/internal/zzabv;
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public final zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabq;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaei;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaei;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzael;)V

    return-object v0
.end method

.method final synthetic zzu()Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-object v0
.end method

.method final synthetic zzv()Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzael;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-object v0
.end method
