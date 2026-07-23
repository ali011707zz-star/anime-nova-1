.class public final Lcom/google/android/gms/internal/ads/zzaoj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaon;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzer;

.field private final zze:Ljava/lang/String;

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzj:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:J

.field private zzu:I

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaoj;->zza:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeq;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaoj;->zza:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzt:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzi()V

    return-void
.end method

.method public static zzf(I)Z
    .locals 1

    .line 0
    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzg()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzi()V

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzer;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    .line 2
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzi()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzagh;JII)V
    .locals 1

    .line 0
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzw:Lcom/google/android/gms/internal/ads/zzagh;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzx:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    return-void
.end method

.method private final zzk()V
    .locals 1

    .line 0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    return-void
.end method

.method private static final zzl(BB)Z
    .locals 0

    .line 0
    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzf(I)Z

    move-result p0

    return p0
.end method

.method private static final zzm(Lcom/google/android/gms/internal/ads/zzer;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzg()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzh:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzw:Lcom/google/android/gms/internal/ads/zzagh;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzb:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string p2, "application/id3"

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaer;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaer;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    if-lez v1, :cond_1d

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    const/16 v2, 0xd

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_b

    if-eq v1, v10, :cond_8

    const/16 v7, 0xa

    if-eq v1, v9, :cond_7

    if-eq v1, v5, :cond_2

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzw:Lcom/google/android/gms/internal/ads/zzagh;

    .line 31
    invoke-interface {v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    if-ne v2, v1, :cond_0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    move v8, v10

    .line 32
    :cond_1
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzw:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    .line 33
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzx:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzv:J

    .line 34
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzi()V

    goto :goto_0

    .line 64
    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    const/4 v11, 0x5

    if-eq v10, v1, :cond_3

    move v1, v11

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    .line 35
    invoke-direct {v0, v6, v13, v1}, Lcom/google/android/gms/internal/ads/zzaoj;->zzh(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzs:Z

    if-nez v1, :cond_5

    .line 37
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v1

    add-int/2addr v1, v10

    if-eq v1, v9, :cond_4

    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x32

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Detected audio object type: "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but assuming AAC LC."

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "AdtsReader"

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_4
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 40
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v1

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    shr-int/lit8 v11, v7, 0x1

    and-int/2addr v11, v3

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    shl-int/lit8 v3, v7, 0x7

    shl-int/2addr v1, v5

    and-int/lit16 v3, v3, 0x80

    and-int/lit8 v1, v1, 0x78

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 41
    new-array v3, v9, [B

    aput-byte v11, v3, v8

    aput-byte v1, v3, v10

    .line 42
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadt;->zza([B)Lcom/google/android/gms/internal/ads/zzads;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/ads/zzt;

    .line 43
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzh:Ljava/lang/String;

    .line 44
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzg:Ljava/lang/String;

    .line 45
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v7, "audio/mp4a-latm"

    .line 46
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzads;->zzc:Ljava/lang/String;

    .line 47
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzads;->zzb:I

    .line 48
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzads;->zza:I

    .line 49
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 50
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zze:Ljava/lang/String;

    .line 51
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzf:I

    .line 52
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzg(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 53
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    int-to-long v7, v3

    const-wide/32 v13, 0x3d090000

    .line 54
    div-long/2addr v13, v7

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzt:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    .line 55
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzs:Z

    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 57
    :goto_2
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzh(I)V

    .line 58
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v1

    add-int/lit8 v2, v1, -0x7

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    if-eqz v3, :cond_6

    add-int/lit8 v2, v1, -0x9

    :cond_6
    move v5, v2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzi:Lcom/google/android/gms/internal/ads/zzagh;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzt:J

    const/4 v4, 0x0

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaoj;->zzj(Lcom/google/android/gms/internal/ads/zzagh;JII)V

    goto/16 :goto_0

    .line 28
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v2

    .line 60
    invoke-direct {v0, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzaoj;->zzh(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    .line 61
    invoke-interface {v2, v1, v7}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    const/4 v2, 0x6

    .line 62
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    move-object v2, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzj:Lcom/google/android/gms/internal/ads/zzagh;

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzG()I

    move-result v2

    const/16 v4, 0xa

    add-int/lit8 v5, v2, 0xa

    const-wide/16 v2, 0x0

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaoj;->zzj(Lcom/google/android/gms/internal/ads/zzagh;JII)V

    goto/16 :goto_0

    .line 24
    :cond_8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v5

    .line 25
    aget-byte v3, v3, v5

    aput-byte v3, v2, v8

    .line 26
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    .line 27
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    if-eq v2, v7, :cond_9

    if-eq v1, v2, :cond_9

    .line 29
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzg()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    if-nez v2, :cond_a

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzr:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    .line 28
    :cond_a
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzk()V

    goto/16 :goto_0

    .line 34
    :cond_b
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v11

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v12

    :goto_3
    if-ge v11, v12, :cond_1c

    add-int/lit8 v13, v11, 0x1

    .line 3
    aget-byte v14, v1, v11

    and-int/lit16 v15, v14, 0xff

    move/from16 v16, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    const/16 v8, 0x200

    if-ne v5, v8, :cond_15

    int-to-byte v5, v15

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzaoj;->zzl(BB)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    if-nez v5, :cond_12

    add-int/lit8 v5, v11, -0x1

    .line 4
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzc:Lcom/google/android/gms/internal/ads/zzeq;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    .line 5
    invoke-static {v6, v3, v10}, Lcom/google/android/gms/internal/ads/zzaoj;->zzm(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    const/4 v9, 0x7

    goto/16 :goto_7

    .line 6
    :cond_d
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    .line 7
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v3

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzp:I

    if-eq v2, v7, :cond_e

    if-ne v3, v2, :cond_c

    :cond_e
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    if-eq v2, v7, :cond_10

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    .line 8
    invoke-static {v6, v2, v10}, Lcom/google/android/gms/internal/ads/zzaoj;->zzm(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    .line 9
    :cond_f
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    .line 10
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v2

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzq:I

    if-ne v2, v9, :cond_c

    add-int/lit8 v2, v11, 0x1

    .line 11
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_10
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzeq;->zza:[B

    .line 12
    invoke-static {v6, v2, v4}, Lcom/google/android/gms/internal/ads/zzaoj;->zzm(Lcom/google/android/gms/internal/ads/zzer;[BI)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xe

    .line 13
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzf(I)V

    const/16 v2, 0xd

    .line 14
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzeq;->zzj(I)I

    move-result v8

    const/4 v9, 0x7

    if-lt v8, v9, :cond_16

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v17

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v2

    add-int/2addr v5, v8

    if-ge v5, v2, :cond_12

    .line 15
    aget-byte v8, v17, v5

    if-ne v8, v7, :cond_11

    add-int/lit8 v5, v5, 0x1

    if-eq v5, v2, :cond_12

    .line 16
    aget-byte v2, v17, v5

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzaoj;->zzl(BB)Z

    move-result v5

    if-eqz v5, :cond_16

    and-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x3

    if-ne v2, v3, :cond_16

    goto :goto_4

    :cond_11
    const/16 v3, 0x49

    if-ne v8, v3, :cond_16

    add-int/lit8 v3, v5, 0x1

    if-eq v3, v2, :cond_12

    .line 17
    aget-byte v3, v17, v3

    const/16 v8, 0x44

    if-ne v3, v8, :cond_16

    add-int/lit8 v5, v5, 0x2

    if-eq v5, v2, :cond_12

    .line 18
    aget-byte v2, v17, v5

    const/16 v3, 0x33

    if-ne v2, v3, :cond_16

    :cond_12
    :goto_4
    and-int/lit8 v1, v14, 0x8

    shr-int/lit8 v1, v1, 0x3

    .line 8
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzr:I

    and-int/lit8 v1, v14, 0x1

    xor-int/2addr v1, v10

    if-eq v10, v1, :cond_13

    const/4 v1, 0x0

    goto :goto_5

    :cond_13
    move v1, v10

    :goto_5
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzn:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzo:Z

    if-nez v1, :cond_14

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    goto :goto_6

    .line 19
    :cond_14
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaoj;->zzk()V

    .line 20
    :goto_6
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_0

    :cond_15
    move v9, v3

    .line 5
    :cond_16
    :goto_7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    or-int v3, v2, v15

    const/16 v5, 0x149

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x1ff

    if-eq v3, v5, :cond_1a

    const/16 v5, 0x344

    if-eq v3, v5, :cond_19

    const/16 v5, 0x433

    if-eq v3, v5, :cond_18

    const/16 v3, 0x100

    if-eq v2, v3, :cond_17

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    move v3, v9

    move/from16 v5, v16

    const/16 v2, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_3

    :cond_17
    move/from16 v3, v16

    const/4 v2, 0x2

    const/4 v5, 0x0

    goto :goto_9

    :cond_18
    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzk:I

    move/from16 v3, v16

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzl:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzu:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzd:Lcom/google/android/gms/internal/ads/zzer;

    .line 21
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 22
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_0

    :cond_19
    move/from16 v3, v16

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v8, 0x400

    :goto_8
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaoj;->zzm:I

    goto :goto_9

    :cond_1a
    move/from16 v3, v16

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v8, 0x200

    goto :goto_8

    :cond_1b
    move/from16 v3, v16

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v8, 0x300

    goto :goto_8

    :goto_9
    move v8, v5

    move v11, v13

    move v5, v3

    move v3, v9

    move v9, v2

    const/16 v2, 0xd

    goto/16 :goto_3

    .line 23
    :cond_1c
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto/16 :goto_0

    :cond_1d
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    .line 0
    return-void
.end method
