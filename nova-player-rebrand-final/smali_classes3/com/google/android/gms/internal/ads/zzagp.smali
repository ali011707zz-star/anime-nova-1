.class public final Lcom/google/android/gms/internal/ads/zzagp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# static fields
.field private static final zza:[I

.field private static final zzb:[I

.field private static final zzc:[B

.field private static final zzd:[B


# instance fields
.field private final zze:[B

.field private final zzf:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzg:Z

.field private zzh:J

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzo:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzp:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzq:Lcom/google/android/gms/internal/ads/zzafy;

.field private zzr:J

.field private zzs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzagp;->zza:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:[I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "#!AMR\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[B

    const-string v1, "#!AMR-WB\n"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zze:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzk:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaer;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzf:Lcom/google/android/gms/internal/ads/zzagh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzp:Lcom/google/android/gms/internal/ads/zzagh;

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagp;->zzc:[B

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzi(Lcom/google/android/gms/internal/ads/zzaev;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzg:Z

    .line 2
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    return v3

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagp;->zzd:[B

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzagp;->zzi(Lcom/google/android/gms/internal/ads/zzaev;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzg:Z

    .line 4
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    return v3

    :cond_1
    return v2
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzaev;[B)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    .line 2
    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 4
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzaev;)I
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzj:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_7

    :try_start_0
    const-string v0, "Invalid padding bits for frame header "

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzagp;->zze:[B

    .line 2
    invoke-interface {p1, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    aget-byte v4, v4, v3

    and-int/lit16 v5, v4, 0x83

    const/4 v6, 0x0

    if-gtz v5, :cond_6

    shr-int/lit8 v0, v4, 0x3

    .line 3
    const-string v4, "Illegal AMR "

    const-string v5, " frame type "

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzg:Z

    and-int/lit8 v0, v0, 0xf

    if-eqz v7, :cond_0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    const/16 v8, 0xd

    if-le v0, v8, :cond_0

    goto :goto_0

    :cond_0
    if-nez v7, :cond_4

    const/16 v8, 0xc

    if-lt v0, v8, :cond_1

    const/16 v8, 0xe

    if-gt v0, v8, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzagp;->zzb:[I

    aget v0, v4, v0

    goto :goto_1

    .line 7
    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzagp;->zza:[I

    aget v0, v4, v0

    .line 3
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzi:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzj:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzk:I

    if-ne v4, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzk:I

    move v4, v0

    :cond_3
    if-ne v4, v0, :cond_7

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzl:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzl:I

    goto :goto_3

    .line 7
    :cond_4
    :goto_2
    :try_start_1
    const-string p1, "WB"

    const-string v3, "NB"

    if-eq v2, v7, :cond_5

    move-object p1, v3

    .line 4
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 3
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v1

    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzp:Lcom/google/android/gms/internal/ads/zzagh;

    .line 6
    invoke-interface {v4, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    if-ne p1, v1, :cond_8

    return v1

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzj:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzj:I

    if-lez v0, :cond_9

    return v3

    :cond_9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzp:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzh:J

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzi:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 7
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzh:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzh:J

    return v3
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagp;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result p1

    return p1
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzaex;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:Lcom/google/android/gms/internal/ads/zzagh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzp:Lcom/google/android/gms/internal/ads/zzagh;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:Lcom/google/android/gms/internal/ads/zzagh;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagp;->zzh(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "Could not find AMR header."

    const/4 p2, 0x0

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzs:Z

    if-nez p2, :cond_6

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzs:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzg:Z

    const-string v1, "audio/amr-wb"

    if-eq p2, v0, :cond_2

    const-string v4, "audio/amr"

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    if-eq p2, v0, :cond_3

    const-string v1, "audio/3gpp"

    :cond_3
    if-eq p2, v0, :cond_4

    const/16 v5, 0x1f40

    goto :goto_2

    :cond_4
    const/16 v5, 0x3e80

    :goto_2
    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:[I

    const/16 v6, 0x8

    aget v0, v0, v6

    goto :goto_3

    .line 12
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagp;->zza:[I

    const/4 v6, 0x7

    aget v0, v0, v6

    .line 2
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzo:Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzt;

    .line 3
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 4
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 5
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 6
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzn(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 7
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 8
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p2

    .line 3
    invoke-interface {v6, p2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 10
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagp;->zzj(Lcom/google/android/gms/internal/ads/zzaev;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzq:Lcom/google/android/gms/internal/ads/zzafy;

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzafx;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(JJ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzq:Lcom/google/android/gms/internal/ads/zzafy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzn:Lcom/google/android/gms/internal/ads/zzaex;

    .line 12
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    :goto_4
    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return p2

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(JJ)V
    .locals 1

    .line 0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzh:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzj:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzr:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzm:J

    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzg(Lcom/google/android/gms/internal/ads/zzaeu;)Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object v0

    return-object v0
.end method
