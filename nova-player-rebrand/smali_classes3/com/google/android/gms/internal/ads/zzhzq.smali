.class public final Lcom/google/android/gms/internal/ads/zzhzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field zza:I

.field private final zzb:Ljava/io/Reader;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhyq;

.field private final zzd:[C

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:J

.field private zzj:I

.field private zzk:[I

.field private zzl:I

.field private zzm:[Ljava/lang/String;

.field private zzn:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyt;->zza:Lcom/google/android/gms/internal/ads/zzhyt;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhyq;->zzb:Lcom/google/android/gms/internal/ads/zzhyq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzk:[I

    const/4 v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzm:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    const-string v0, "in == null"

    .line 2
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzb:Ljava/io/Reader;

    return-void
.end method

.method private final zzn(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzo(C)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    move v3, v2

    move v2, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v1, v3, :cond_1a

    add-int/lit8 v7, v1, 0x1

    aget-char v1, v4, v1

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzhyq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    if-ne v8, v9, :cond_1

    const/16 v8, 0x20

    if-lt v1, v8, :cond_0

    goto :goto_2

    .line 20
    :cond_0
    const-string p1, "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1

    :cond_1
    :goto_2
    if-ne v1, p1, :cond_3

    sub-int p1, v7, v2

    add-int/lit8 p1, p1, -0x1

    .line 1
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 12
    :cond_2
    invoke-virtual {v0, v4, v2, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v8, 0x5c

    const/16 v10, 0xa

    if-ne v1, v8, :cond_18

    sub-int v1, v7, v2

    add-int/lit8 v3, v1, -0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/2addr v1, v1

    .line 2
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    :cond_4
    invoke-virtual {v0, v4, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    const-string v3, "Unterminated escape sequence"

    if-ne v1, v2, :cond_6

    .line 4
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1

    .line 4
    :cond_6
    :goto_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 5
    aget-char v5, v4, v1

    if-eq v5, v10, :cond_12

    const/16 v2, 0x22

    if-eq v5, v2, :cond_14

    const/16 v2, 0x27

    if-eq v5, v2, :cond_13

    const/16 v2, 0x2f

    if-eq v5, v2, :cond_14

    if-eq v5, v8, :cond_14

    const/16 v2, 0x62

    if-eq v5, v2, :cond_11

    const/16 v2, 0x66

    if-eq v5, v2, :cond_10

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_15

    const/16 v6, 0x72

    if-eq v5, v6, :cond_f

    const/16 v6, 0x74

    if-eq v5, v6, :cond_e

    const/16 v6, 0x75

    if-ne v5, v6, :cond_d

    add-int/lit8 v1, v1, 0x5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    const/4 v6, 0x4

    if-le v1, v5, :cond_8

    .line 6
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 14
    :cond_7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1

    .line 6
    :cond_8
    :goto_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/lit8 v3, v1, 0x4

    const/4 v5, 0x0

    :goto_5
    if-ge v1, v3, :cond_c

    shl-int/lit8 v5, v5, 0x4

    .line 7
    aget-char v7, v4, v1

    const/16 v8, 0x30

    if-lt v7, v8, :cond_9

    const/16 v8, 0x39

    if-gt v7, v8, :cond_9

    add-int/lit8 v7, v7, -0x30

    :goto_6
    add-int/2addr v5, v7

    goto :goto_7

    :cond_9
    const/16 v8, 0x61

    if-lt v7, v8, :cond_a

    if-gt v7, v2, :cond_a

    add-int/lit8 v7, v7, -0x57

    goto :goto_6

    :cond_a
    const/16 v8, 0x41

    if-lt v7, v8, :cond_b

    const/16 v8, 0x46

    if-gt v7, v8, :cond_b

    add-int/lit8 v7, v7, -0x37

    goto :goto_6

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 14
    :cond_b
    new-instance p1, Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    invoke-direct {p1, v4, v0, v6}, Ljava/lang/String;-><init>([CII)V

    const-string v0, "Malformed Unicode escape \\u"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1

    .line 7
    :cond_c
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    int-to-char v10, v5

    goto :goto_8

    .line 18
    :cond_d
    const-string p1, "Invalid escape sequence"

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1

    :cond_e
    const/16 v10, 0x9

    goto :goto_8

    :cond_f
    const/16 v10, 0xd

    goto :goto_8

    :cond_10
    const/16 v10, 0xc

    goto :goto_8

    :cond_11
    const/16 v10, 0x8

    goto :goto_8

    .line 8
    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    if-eq v1, v9, :cond_17

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    if-eq v1, v9, :cond_16

    :cond_14
    move v10, v5

    .line 8
    :cond_15
    :goto_8
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    move v1, v2

    goto/16 :goto_1

    .line 13
    :cond_16
    const-string p1, "Invalid escaped character \"\'\" in strict mode"

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1

    .line 8
    :cond_17
    const-string p1, "Cannot escape a newline character in strict mode"

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1

    :cond_18
    if-ne v1, v10, :cond_19

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    :cond_19
    move v1, v7

    goto/16 :goto_1

    :cond_1a
    sub-int v3, v1, v2

    if-nez v0, :cond_1b

    add-int v0, v3, v3

    new-instance v7, Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v7

    .line 10
    :cond_1b
    invoke-virtual {v0, v4, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 11
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const-string p1, "Unterminated string"

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1
.end method

.method private final zzp()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v0

    .line 1
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    goto :goto_1

    :cond_2
    const/16 v3, 0x400

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 2
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 4
    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_6

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 7
    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1
    :goto_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    return-object v2

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzq(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x500

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzk:[I

    .line 2
    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/2addr v0, v0

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzk:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    .line 4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzm:[Ljava/lang/String;

    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzm:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzk:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    .line 6
    aput p1, v0, v1

    return-void

    .line 1
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhzt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Nesting limit 1280 reached"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhzt;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzr(I)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2
    :cond_0
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    .line 1
    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzb:Ljava/io/Reader;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    rsub-int v4, v2, 0x400

    .line 2
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v1, v0, v3

    const v5, 0xfeff

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private final zzs(Z)I
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "End of input"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    add-int/lit8 v4, v0, 0x1

    .line 2
    aget-char v5, v3, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    goto/16 :goto_6

    :cond_3
    const/16 v7, 0x20

    if-eq v5, v7, :cond_10

    const/16 v7, 0xd

    if-eq v5, v7, :cond_10

    const/16 v7, 0x9

    if-ne v5, v7, :cond_4

    goto/16 :goto_6

    :cond_4
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_e

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    const/4 v5, 0x2

    if-ne v4, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 3
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    return v7

    .line 4
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 5
    aget-char v1, v3, v0

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_8

    if-eq v1, v7, :cond_7

    return v7

    :cond_7
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzu()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v0, v5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    if-le v0, v1, :cond_a

    .line 7
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 11
    :cond_9
    const-string p1, "Unterminated comment"

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object p1

    throw p1

    .line 7
    :cond_a
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 8
    aget-char v1, v3, v0

    if-ne v1, v6, :cond_b

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v1, v0

    .line 9
    aget-char v1, v3, v1

    const-string v4, "*/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v4, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 8
    :cond_c
    :goto_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    goto :goto_2

    .line 9
    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v0, v5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x23

    if-ne v5, v0, :cond_f

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzu()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    goto/16 :goto_0

    :cond_f
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    return v5

    :cond_10
    :goto_6
    move v0, v4

    goto/16 :goto_0
.end method

.method private final zzt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhyq;->zza:Lcom/google/android/gms/internal/ads/zzhyq;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object v0

    throw v0
.end method

.method private final zzu()V
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 2
    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method

.method private final zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhzt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x4f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#malformed-json"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzhzt;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzm()I

    move-result v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzm()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhzr;->zza(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v4, 0x9

    if-ne v0, v4, :cond_0

    const-string v0, "adapter-not-null-safe"

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "unexpected-json-structure"

    :goto_0
    add-int/lit8 v5, v5, 0x5

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 4
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nSee "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final close()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzk:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzb:Ljava/io/Reader;

    .line 2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzhzq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhyq;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    return-void
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzq(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 3
    aput v2, v0, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return-void

    :cond_1
    const-string v0, "BEGIN_ARRAY"

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    add-int/lit8 v0, v0, -0x2

    .line 2
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return-void

    :cond_1
    const-string v0, "END_ARRAY"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzq(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return-void

    :cond_1
    const-string v0, "BEGIN_OBJECT"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final zze()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzm:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 2
    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    add-int/lit8 v0, v0, -0x2

    .line 3
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return-void

    :cond_1
    const-string v0, "END_OBJECT"

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final zzf()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final zzg()I
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzk:[I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    aget v4, v1, v2

    const/16 v7, 0xa

    const/16 v8, 0x27

    const/16 v9, 0x5d

    const/16 v10, 0x3b

    const/16 v11, 0x2c

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/4 v14, 0x7

    const/4 v15, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x2

    move/from16 v18, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_1

    .line 2
    aput v6, v1, v2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_1
    if-ne v4, v6, :cond_4

    .line 3
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhzq;->zzs(Z)I

    move-result v1

    if-eq v1, v11, :cond_0

    if-eq v1, v10, :cond_3

    if-ne v1, v9, :cond_2

    move v13, v15

    goto/16 :goto_1c

    .line 29
    :cond_2
    const-string v1, "Unterminated array"

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object v1

    throw v1

    .line 4
    :cond_3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    goto :goto_0

    :cond_4
    const/16 v6, 0x7d

    if-eq v4, v13, :cond_41

    if-ne v4, v5, :cond_5

    move/from16 v19, v15

    const/4 v3, 0x2

    goto/16 :goto_1a

    :cond_5
    if-ne v4, v15, :cond_8

    .line 16
    aput v5, v1, v2

    .line 17
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhzq;->zzs(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_7

    .line 18
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    if-lt v1, v2, :cond_6

    .line 19
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    aget-char v1, v1, v2

    const/16 v6, 0x3e

    if-ne v1, v6, :cond_0

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    goto :goto_0

    .line 26
    :cond_7
    const-string v1, "Expected \':\'"

    .line 20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object v1

    throw v1

    :cond_8
    if-ne v4, v12, :cond_b

    .line 19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhyq;->zza:Lcom/google/android/gms/internal/ads/zzhyq;

    if-ne v1, v2, :cond_a

    .line 21
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhzq;->zzs(Z)I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v1, v15

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    if-le v1, v2, :cond_9

    .line 22
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    .line 24
    :cond_9
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    .line 23
    aget-char v15, v2, v1

    const/16 v12, 0x29

    if-ne v15, v12, :cond_a

    add-int/lit8 v12, v1, 0x1

    aget-char v12, v2, v12

    if-ne v12, v9, :cond_a

    add-int/lit8 v12, v1, 0x2

    aget-char v12, v2, v12

    if-ne v12, v6, :cond_a

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v2, v6

    if-ne v6, v8, :cond_a

    add-int/lit8 v6, v1, 0x4

    aget-char v2, v2, v6

    if-ne v2, v7, :cond_a

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 22
    :cond_a
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzk:[I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v2, v2, -0x1

    .line 24
    aput v14, v1, v2

    goto/16 :goto_0

    :cond_b
    if-ne v4, v14, :cond_d

    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzs(Z)I

    move-result v2

    move/from16 v6, v18

    if-ne v2, v6, :cond_c

    const/16 v13, 0x11

    goto/16 :goto_1c

    .line 26
    :cond_c
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    goto :goto_2

    :cond_d
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v4, v2, :cond_40

    .line 27
    :goto_2
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhzq;->zzs(Z)I

    move-result v2

    const/16 v6, 0x22

    if-eq v2, v6, :cond_3f

    if-eq v2, v8, :cond_3e

    if-eq v2, v11, :cond_3a

    if-eq v2, v10, :cond_3a

    const/16 v6, 0x5b

    if-eq v2, v6, :cond_4a

    if-eq v2, v9, :cond_39

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_38

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    const/16 v18, -0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    .line 31
    aget-char v2, v4, v2

    const/16 v6, 0x74

    if-eq v2, v6, :cond_13

    const/16 v6, 0x54

    if-ne v2, v6, :cond_e

    goto :goto_6

    :cond_e
    const/16 v6, 0x66

    if-eq v2, v6, :cond_12

    const/16 v6, 0x46

    if-ne v2, v6, :cond_f

    goto :goto_5

    :cond_f
    const/16 v6, 0x6e

    if-eq v2, v6, :cond_11

    const/16 v6, 0x4e

    if-ne v2, v6, :cond_10

    goto :goto_4

    :cond_10
    :goto_3
    move v8, v1

    goto/16 :goto_9

    .line 35
    :cond_11
    :goto_4
    const-string v2, "NULL"

    const-string v6, "null"

    move v8, v14

    goto :goto_7

    :cond_12
    :goto_5
    const-string v2, "FALSE"

    const-string v6, "false"

    const/4 v8, 0x6

    goto :goto_7

    .line 31
    :cond_13
    :goto_6
    const-string v2, "TRUE"

    const-string v6, "true"

    move v8, v5

    :goto_7
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzhyq;->zzc:Lcom/google/android/gms/internal/ads/zzhyq;

    move v11, v1

    :goto_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_16

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v12, v11

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    if-lt v12, v15, :cond_14

    add-int/lit8 v12, v11, 0x1

    .line 32
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v12

    if-nez v12, :cond_14

    goto :goto_3

    .line 38
    :cond_14
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v12, v11

    .line 33
    aget-char v12, v4, v12

    .line 34
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v12, v15, :cond_15

    if-eq v9, v10, :cond_10

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v12, v15, :cond_10

    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_16
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v2, v12

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    if-lt v2, v6, :cond_17

    add-int/lit8 v2, v12, 0x1

    .line 35
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v2, v12

    aget-char v2, v4, v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhzq;->zzn(C)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_3

    :cond_18
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    :goto_9
    if-nez v8, :cond_37

    .line 32
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    move v10, v1

    move v15, v10

    move/from16 v17, v15

    move/from16 v16, v3

    const-wide/16 v11, 0x0

    :goto_a
    add-int v1, v2, v10

    if-ne v1, v6, :cond_1d

    const/16 v1, 0x400

    if-ne v10, v1, :cond_1a

    :goto_b
    move-object/from16 v23, v4

    :cond_19
    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_18

    :cond_1a
    add-int/lit8 v1, v10, 0x1

    .line 36
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzr(I)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object/from16 v23, v4

    const-wide/16 v20, 0x0

    :cond_1b
    const/4 v8, 0x2

    goto/16 :goto_10

    :cond_1c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzf:I

    move v6, v2

    move v2, v1

    :cond_1d
    add-int v1, v2, v10

    .line 37
    aget-char v1, v4, v1

    const-wide/16 v20, 0x0

    const/16 v8, 0x2b

    if-eq v1, v8, :cond_33

    const/16 v8, 0x45

    if-eq v1, v8, :cond_31

    const/16 v8, 0x65

    if-eq v1, v8, :cond_31

    const/16 v8, 0x2d

    if-eq v1, v8, :cond_2f

    const/16 v8, 0x2e

    if-eq v1, v8, :cond_2e

    const/16 v8, 0x30

    if-lt v1, v8, :cond_1e

    const/16 v8, 0x39

    if-le v1, v8, :cond_1f

    :cond_1e
    move-object/from16 v23, v4

    goto :goto_f

    :cond_1f
    if-eq v15, v3, :cond_20

    if-nez v15, :cond_21

    :cond_20
    move-object/from16 v23, v4

    const/4 v3, 0x6

    goto :goto_e

    :cond_21
    const/4 v8, 0x2

    if-ne v15, v8, :cond_25

    cmp-long v8, v11, v20

    if-nez v8, :cond_22

    goto :goto_b

    :cond_22
    add-int/lit8 v1, v1, -0x30

    const-wide/16 v8, 0xa

    mul-long/2addr v8, v11

    const-wide v22, -0xcccccccccccccccL

    cmp-long v18, v11, v22

    move-object/from16 v23, v4

    int-to-long v3, v1

    sub-long/2addr v8, v3

    if-gtz v18, :cond_23

    if-nez v18, :cond_24

    cmp-long v1, v8, v11

    if-gez v1, :cond_24

    :cond_23
    const/4 v1, 0x1

    goto :goto_d

    :cond_24
    const/4 v1, 0x0

    :goto_d
    and-int v16, v16, v1

    move-wide v11, v8

    const/4 v3, 0x6

    goto/16 :goto_17

    :cond_25
    move-object/from16 v23, v4

    const/4 v3, 0x6

    if-ne v15, v13, :cond_26

    const/4 v15, 0x4

    goto/16 :goto_17

    :cond_26
    if-eq v15, v5, :cond_27

    if-ne v15, v3, :cond_34

    :cond_27
    move v15, v14

    goto/16 :goto_17

    :goto_e
    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v11, v1

    const/4 v15, 0x2

    goto/16 :goto_17

    .line 38
    :goto_f
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzn(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_c

    :goto_10
    if-ne v15, v8, :cond_2c

    if-eqz v16, :cond_28

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v11, v1

    if-nez v1, :cond_29

    if-eqz v17, :cond_28

    const/4 v3, 0x1

    goto :goto_11

    :cond_28
    const/4 v8, 0x2

    const/4 v15, 0x2

    goto :goto_15

    :cond_29
    move/from16 v3, v17

    :goto_11
    cmp-long v1, v11, v20

    if-nez v1, :cond_2a

    if-nez v3, :cond_28

    goto :goto_12

    :cond_2a
    if-eqz v3, :cond_2b

    goto :goto_13

    :cond_2b
    :goto_12
    neg-long v11, v11

    .line 36
    :goto_13
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzi:J

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    const/16 v3, 0xf

    :goto_14
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    goto :goto_18

    :cond_2c
    :goto_15
    if-eq v15, v8, :cond_2d

    const/4 v1, 0x4

    if-eq v15, v1, :cond_2d

    if-ne v15, v14, :cond_19

    :cond_2d
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zzj:I

    const/16 v3, 0x10

    goto :goto_14

    :cond_2e
    move-object/from16 v23, v4

    const/4 v3, 0x6

    const/4 v8, 0x2

    if-ne v15, v8, :cond_19

    move v15, v13

    goto :goto_17

    :cond_2f
    move-object/from16 v23, v4

    const/4 v3, 0x6

    const/4 v8, 0x2

    if-nez v15, :cond_30

    const/4 v15, 0x1

    const/16 v17, 0x1

    goto :goto_17

    :cond_30
    if-ne v15, v5, :cond_19

    :goto_16
    move v15, v3

    goto :goto_17

    :cond_31
    move-object/from16 v23, v4

    const/4 v3, 0x6

    const/4 v8, 0x2

    if-eq v15, v8, :cond_32

    const/4 v1, 0x4

    if-ne v15, v1, :cond_19

    :cond_32
    move v15, v5

    goto :goto_17

    :cond_33
    move-object/from16 v23, v4

    const/4 v3, 0x6

    if-ne v15, v5, :cond_19

    goto :goto_16

    :cond_34
    :goto_17
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v23

    const/4 v3, 0x1

    goto/16 :goto_a

    :goto_18
    if-eqz v3, :cond_35

    return v3

    .line 32
    :cond_35
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    .line 39
    aget-char v1, v23, v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzn(C)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 41
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return v7

    .line 39
    :cond_36
    const-string v1, "Expected value"

    .line 40
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object v1

    throw v1

    :cond_37
    return v8

    :cond_38
    const/4 v13, 0x1

    goto/16 :goto_1c

    :cond_39
    move v1, v3

    if-ne v4, v1, :cond_3b

    const/4 v13, 0x4

    goto/16 :goto_1c

    :cond_3a
    move v1, v3

    :cond_3b
    if-eq v4, v1, :cond_3d

    const/4 v3, 0x2

    if-ne v4, v3, :cond_3c

    goto :goto_19

    .line 42
    :cond_3c
    const-string v1, "Unexpected value"

    .line 29
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object v1

    throw v1

    .line 28
    :cond_3d
    :goto_19
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    const/16 v18, -0x1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return v14

    .line 30
    :cond_3e
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    const/16 v2, 0x8

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return v2

    :cond_3f
    const/16 v13, 0x9

    goto :goto_1c

    .line 20
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    .line 42
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    const/4 v3, 0x2

    move/from16 v19, v15

    .line 6
    :goto_1a
    aput v19, v1, v2

    if-ne v4, v5, :cond_44

    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzs(Z)I

    move-result v2

    if-eq v2, v11, :cond_44

    if-eq v2, v10, :cond_43

    if-ne v2, v6, :cond_42

    :goto_1b
    move v13, v3

    goto :goto_1c

    .line 5
    :cond_42
    const-string v1, "Unterminated object"

    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object v1

    throw v1

    .line 8
    :cond_43
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    :cond_44
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzs(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_49

    if-eq v1, v8, :cond_48

    const-string v2, "Expected name"

    if-eq v1, v6, :cond_46

    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    const/16 v18, -0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    int-to-char v1, v1

    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhzq;->zzn(C)Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v13, 0xe

    goto :goto_1c

    .line 14
    :cond_45
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object v1

    throw v1

    :cond_46
    if-eq v4, v5, :cond_47

    goto :goto_1b

    .line 10
    :cond_47
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzt;

    move-result-object v1

    throw v1

    .line 11
    :cond_48
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzt()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return v1

    :cond_49
    const/16 v13, 0xd

    .line 35
    :cond_4a
    :goto_1c
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    return v13
.end method

.method public final zzh()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzo(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzo(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzm:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v2, v2, -0x1

    .line 5
    aput-object v0, v1, v2

    return-object v0

    .line 4
    :cond_3
    const-string v0, "a name"

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzo(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzo(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzi:J

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzd:[C

    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzj:I

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzj:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v2, v2, -0x1

    .line 6
    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 5
    :cond_6
    const-string v0, "a string"

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final zzj()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v1, v1, -0x1

    .line 2
    aget v3, v0, v1

    add-int/2addr v3, v2

    aput v3, v0, v1

    return v2

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v1, v1, -0x1

    .line 3
    aget v4, v0, v1

    add-int/2addr v4, v2

    aput v4, v0, v1

    return v3

    :cond_2
    const-string v0, "a boolean"

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final zzk()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    add-int/lit8 v1, v1, -0x1

    .line 2
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    const-string v0, "null"

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzw(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method final zzl()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzg:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzh:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzl:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzk:[I

    .line 2
    aget v4, v4, v3

    packed-switch v4, :pswitch_data_0

    .line 7
    new-instance v0, Ljava/lang/AssertionError;

    .line 8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x15

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown scope value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/16 v4, 0x2e

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzm:[Ljava/lang/String;

    .line 4
    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zzn:[I

    .line 6
    aget v4, v4, v3

    const/16 v5, 0x5b

    .line 7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, " at line "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final zzm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzq;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzq;->zzg()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/16 v0, 0x9

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_7
    const/4 v0, 0x4

    return v0

    :pswitch_8
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
