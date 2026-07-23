.class public final Lcom/google/android/gms/internal/ads/zzsw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrj;


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:I

.field private zzD:Z

.field private zzE:Z

.field private zzF:J

.field private zzG:F

.field private zzH:Ljava/nio/ByteBuffer;

.field private zzI:I

.field private zzJ:Ljava/nio/ByteBuffer;

.field private zzK:Z

.field private zzL:Z

.field private zzM:Z

.field private zzN:Z

.field private zzO:I

.field private zzP:Z

.field private zzQ:Lcom/google/android/gms/internal/ads/zze;

.field private zzR:Landroid/media/AudioDeviceInfo;

.field private zzS:I

.field private zzT:J

.field private zzU:Z

.field private zzV:Z

.field private zzW:J

.field private zzX:J

.field private zzY:Landroid/os/Handler;

.field private final zzZ:Lcom/google/android/gms/internal/ads/zzsr;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzsl;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzte;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcv;

.field private final zzf:Lcom/google/android/gms/internal/ads/zztd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzguf;

.field private final zzh:Ljava/util/ArrayDeque;

.field private zzi:Lcom/google/android/gms/internal/ads/zzsn;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzsv;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzsv;

.field private zzl:Lcom/google/android/gms/internal/ads/zzpq;

.field private zzm:Lcom/google/android/gms/internal/ads/zzrg;

.field private zzn:Lcom/google/android/gms/internal/ads/zzsq;

.field private zzo:Lcom/google/android/gms/internal/ads/zzsq;

.field private zzp:Lcom/google/android/gms/internal/ads/zzck;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzqm;

.field private zzr:Lcom/google/android/gms/internal/ads/zzqj;

.field private zzs:Lcom/google/android/gms/internal/ads/zzqc;

.field private zzt:Lcom/google/android/gms/internal/ads/zzd;

.field private zzu:Lcom/google/android/gms/internal/ads/zzsu;

.field private zzv:Lcom/google/android/gms/internal/ads/zzsu;

.field private zzw:Lcom/google/android/gms/internal/ads/zzav;

.field private zzx:Z

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsw;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsp;[B)V
    .locals 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsp;->zzb()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsp;->zzb()Landroid/content/Context;

    move-result-object p2

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 2
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzb:Landroid/content/Context;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzt:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsp;->zzd()Lcom/google/android/gms/internal/ads/zzsr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzZ:Lcom/google/android/gms/internal/ads/zzsr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsp;->zzc()Lcom/google/android/gms/internal/ads/zzqm;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzsl;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Lcom/google/android/gms/internal/ads/zzsl;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzte;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzte;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzte;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcv;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zze:Lcom/google/android/gms/internal/ads/zzcv;

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zztd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zztd;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzf:Lcom/google/android/gms/internal/ads/zztd;

    .line 7
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzguf;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzg:Lcom/google/android/gms/internal/ads/zzguf;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzG:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zze;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zze;-><init>(IF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsu;

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Lcom/google/android/gms/internal/ads/zzav;JJ[B)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzv:Lcom/google/android/gms/internal/ads/zzsu;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzx:Z

    new-instance p2, Ljava/util/ArrayDeque;

    .line 9
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzh:Ljava/util/ArrayDeque;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzsv;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzj:Lcom/google/android/gms/internal/ads/zzsv;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzsv;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzk:Lcom/google/android/gms/internal/ads/zzsv;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    const/4 v1, -0x1

    if-lt p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsp;->zzb()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsp;->zzb()Landroid/content/Context;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzaf(I)I

    move-result v1

    .line 9
    :cond_2
    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzS:I

    return-void
.end method

.method static zzD(ILjava/nio/ByteBuffer;)I
    .locals 8

    const/16 v0, 0x14

    if-eq p0, v0, :cond_c

    const/16 v0, 0x1e

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x400

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x10

    packed-switch p0, :pswitch_data_1

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1b

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected audio encoding: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :pswitch_0
    sget p0, Lcom/google/android/gms/internal/ads/zzady;->$r8$clinit:I

    new-array p0, v0, [B

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 4
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeq;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzeq;-><init>([BI)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzady;->zzb(Lcom/google/android/gms/internal/ads/zzeq;)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    return p0

    :pswitch_1
    return v4

    :pswitch_2
    const/16 p0, 0x200

    return p0

    .line 7
    :pswitch_3
    sget p0, Lcom/google/android/gms/internal/ads/zzadv;->$r8$clinit:I

    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    move v5, p0

    :goto_0
    if-gt v5, v4, :cond_1

    add-int/lit8 v6, v5, 0x4

    .line 10
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzJ(Ljava/nio/ByteBuffer;I)I

    move-result v6

    and-int/2addr v6, v1

    const v7, -0x78d9046

    if-ne v6, v7, :cond_0

    sub-int/2addr v5, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    if-eq v5, v3, :cond_3

    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v5

    add-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v5

    const/16 v2, 0xbb

    if-ne p0, v2, :cond_2

    const/16 p0, 0x9

    goto :goto_2

    :cond_2
    const/16 p0, 0x8

    :goto_2
    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    const/16 p1, 0x28

    shl-int p0, p1, p0

    mul-int/2addr p0, v0

    return p0

    :cond_3
    return v2

    :pswitch_4
    const/16 p0, 0x800

    return p0

    :pswitch_5
    return v4

    .line 13
    :pswitch_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzJ(Ljava/nio/ByteBuffer;I)I

    move-result p0

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafs;->zzb(I)I

    move-result p0

    if-eq p0, v3, :cond_4

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 26
    :pswitch_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzadv;->zze(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    .line 16
    :cond_5
    :pswitch_8
    sget p0, Lcom/google/android/gms/internal/ads/zzaet;->$r8$clinit:I

    .line 17
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, -0xde4bec0

    if-eq p0, v0, :cond_b

    .line 18
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, -0x17bd3b8f

    if-ne p0, v0, :cond_6

    return v4

    .line 19
    :cond_6
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, 0x25205864

    if-ne p0, v0, :cond_7

    const/16 p0, 0x1000

    return p0

    .line 20
    :cond_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    .line 21
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eq v0, v1, :cond_a

    if-eq v0, v3, :cond_9

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_8

    add-int/lit8 v0, p0, 0x4

    add-int/lit8 p0, p0, 0x5

    .line 25
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xfc

    :goto_3
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    goto :goto_5

    :cond_8
    add-int/lit8 v0, p0, 0x5

    .line 22
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p0, p0, 0x6

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_4
    and-int/lit8 p0, p0, 0x3c

    goto :goto_3

    :cond_9
    add-int/lit8 v0, p0, 0x4

    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_4

    :cond_a
    add-int/lit8 v0, p0, 0x4

    add-int/lit8 p0, p0, 0x5

    .line 24
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xfc

    shr-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    :goto_5
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0

    :cond_b
    return v4

    .line 1
    :cond_c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafu;->zzb(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic zzG()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsw;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zzH()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsw;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final zzP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzl()Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcm;->zza:Lcom/google/android/gms/internal/ads/zzcm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzb(Lcom/google/android/gms/internal/ads/zzcm;)V

    return-void
.end method

.method private final zzQ(Lcom/google/android/gms/internal/ads/zzql;)Lcom/google/android/gms/internal/ads/zzqc;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsi;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsi;->zzf(Lcom/google/android/gms/internal/ads/zzql;)Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqi; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object v9, v0

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsq;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzrf;-><init>(IIIIILcom/google/android/gms/internal/ads/zzv;ZLjava/lang/Exception;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzrg;->zza(Ljava/lang/Exception;)V

    .line 4
    :goto_0
    throw v1
.end method

.method private final zzR(J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsw;->zzU(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzc()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zze()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzT(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsw;->zzU(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzd(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzT(Ljava/nio/ByteBuffer;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsw;->zzU(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzS()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzc()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzU(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzf()V

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzR(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v4

    :cond_3
    return v3
.end method

.method private final zzT(Ljava/nio/ByteBuffer;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x14

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    .line 6
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzs(JI)J

    move-result-wide v1

    long-to-int v1, v1

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzac()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-gez v6, :cond_15

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzsq;->zzj()I

    move-result v7

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    long-to-int v2, v2

    .line 11
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ge v2, v1, :cond_14

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/high16 v16, 0x4f000000

    const/4 v3, 0x4

    const/high16 v17, -0x31000000

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v6, v11, :cond_a

    if-eq v6, v10, :cond_9

    if-eq v6, v3, :cond_7

    if-eq v6, v15, :cond_6

    if-eq v6, v14, :cond_5

    if-eq v6, v13, :cond_4

    if-eq v6, v12, :cond_3

    const/high16 v12, 0x60000000

    if-ne v6, v12, :cond_2

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    :goto_2
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    or-int/2addr v12, v15

    goto/16 :goto_6

    .line 57
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 16
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    :goto_3
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    goto/16 :goto_6

    .line 19
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    :goto_4
    or-int/2addr v12, v13

    goto :goto_6

    .line 20
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    goto :goto_3

    .line 27
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_8

    neg-float v12, v12

    mul-float v12, v12, v17

    :goto_5
    float-to-int v12, v12

    goto :goto_6

    :cond_8
    mul-float v12, v12, v16

    goto :goto_5

    .line 29
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    .line 30
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    goto :goto_4

    :goto_6
    int-to-long v12, v12

    int-to-long v14, v2

    mul-long/2addr v12, v14

    .line 31
    div-long/2addr v12, v4

    long-to-int v12, v12

    if-eq v6, v11, :cond_13

    if-eq v6, v10, :cond_12

    if-eq v6, v3, :cond_10

    const/16 v3, 0x15

    if-eq v6, v3, :cond_f

    const/16 v3, 0x16

    if-eq v6, v3, :cond_e

    const/high16 v3, 0x10000000

    if-eq v6, v3, :cond_d

    const/high16 v3, 0x50000000

    if-eq v6, v3, :cond_c

    const/high16 v3, 0x60000000

    if-ne v6, v3, :cond_b

    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    int-to-byte v11, v11

    .line 32
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    .line 33
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 34
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    .line 56
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_c
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v11, v11

    .line 36
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    .line 37
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 38
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_d
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v10, v10

    .line 39
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 40
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_e
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    .line 41
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 42
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 43
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    .line 44
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v3, v3

    .line 45
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 46
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    .line 47
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    if-gez v12, :cond_11

    int-to-float v3, v12

    neg-float v3, v3

    div-float v3, v3, v17

    .line 48
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-float v3, v12

    div-float v3, v3, v16

    .line 49
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v3, v12, 0x18

    int-to-byte v3, v3

    .line 50
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v3, v3

    .line 51
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 52
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int v10, v9, v7

    if-ne v3, v10, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    goto/16 :goto_1

    :cond_14
    move-object/from16 v1, p1

    .line 55
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v1, v8

    goto :goto_8

    :cond_15
    move-object/from16 v1, p1

    :goto_8
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    :cond_16
    return-void
.end method

.method private final zzU(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzk:Lcom/google/android/gms/internal/ads/zzsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzb()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzI:I

    .line 3
    invoke-interface {v5, v6, v7, p1, p2}, Lcom/google/android/gms/internal/ads/zzqc;->zzc(Ljava/nio/ByteBuffer;IJ)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzT:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzk:Lcom/google/android/gms/internal/ads/zzsv;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzsv;->zzc()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 13
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzqc;->zzg()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzB:J

    cmp-long p2, v5, v1

    if-lez p2, :cond_1

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzV:Z

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzN:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzsz;

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzA:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    sub-int/2addr v0, p2

    int-to-long v5, v0

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzA:J

    :cond_3
    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    .line 17
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzB:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzC:I

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzI:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzB:J

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Z

    if-eqz p2, :cond_7

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzac()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzV()V

    goto :goto_1

    :cond_7
    move v3, v4

    .line 4
    :goto_1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqb;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsq;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    invoke-direct {v0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzri;-><init>(ILcom/google/android/gms/internal/ads/zzv;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz p1, :cond_8

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzrg;->zza(Ljava/lang/Exception;)V

    :cond_8
    if-nez p2, :cond_9

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzk:Lcom/google/android/gms/internal/ads/zzsv;

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzsv;->zza(Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_9
    throw v0

    :cond_a
    :goto_2
    return-void
.end method

.method private final zzV()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    return-void
.end method

.method private final zzW()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzG:F

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqc;->zzf(F)V

    :cond_0
    return-void
.end method

.method private final zzX()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsq;->zzh()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    const/4 v2, -0x1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqm;->zzb(Lcom/google/android/gms/internal/ads/zzqf;)Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v7
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqd; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzh()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzi()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzj()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzl()Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;IILcom/google/android/gms/internal/ads/zzql;Lcom/google/android/gms/internal/ads/zzck;[B)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzre;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzsq;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzre;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;)V

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzA()V

    return-void
.end method

.method private final zzY(Lcom/google/android/gms/internal/ads/zzav;)V
    .locals 7

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsu;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-wide v4, v2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Lcom/google/android/gms/internal/ads/zzav;JJ[B)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzu:Lcom/google/android/gms/internal/ads/zzsu;

    return-void

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzv:Lcom/google/android/gms/internal/ads/zzsu;

    return-void
.end method

.method private final zzZ(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzZ:Lcom/google/android/gms/internal/ads/zzsr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsr;->zzb(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    goto :goto_0

    .line 2
    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzZ:Lcom/google/android/gms/internal/ads/zzsr;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzx:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsr;->zzc(Z)Z

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzh:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsu;

    const-wide/16 v4, 0x0

    .line 6
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzac()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzsq;->zzd(J)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Lcom/google/android/gms/internal/ads/zzav;JJ[B)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzP()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzx:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzta;->zzaw()Lcom/google/android/gms/internal/ads/zzrb;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzrb;->zzh(Z)V

    :cond_2
    return-void
.end method

.method private final zzaa()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzab()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzac()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzA:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsq;->zzj()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    add-long/2addr v0, v2

    const-wide/16 v4, -0x1

    add-long/2addr v0, v4

    .line 3
    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzB:J

    return-wide v0
.end method

.method private final zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqf;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzt:Lcom/google/android/gms/internal/ads/zzd;

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqe;->zza(Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzqe;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzR:Landroid/media/AudioDeviceInfo;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqe;->zzb(Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzqe;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqe;->zzc(I)Lcom/google/android/gms/internal/ads/zzqe;

    const/4 p1, -0x1

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqe;->zze(I)Lcom/google/android/gms/internal/ads/zzqe;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzS:I

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqe;->zzd(I)Lcom/google/android/gms/internal/ads/zzqe;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqf;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzqe;[B)V

    return-object p1
.end method

.method private final zzae()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzL:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzL:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzM:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzd()V

    :cond_1
    return-void
.end method

.method private static zzaf(I)I
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final zzA()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzy:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzz:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzA:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzB:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzV:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzC:I

    new-instance v4, Lcom/google/android/gms/internal/ads/zzsu;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Lcom/google/android/gms/internal/ads/zzav;JJ[B)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzv:Lcom/google/android/gms/internal/ads/zzsu;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzF:J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzu:Lcom/google/android/gms/internal/ads/zzsu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzI:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzJ:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzte;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzte;->zzr()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzP()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsw;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zze()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzk:Lcom/google/android/gms/internal/ads/zzsv;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzj:Lcom/google/android/gms/internal/ads/zzsv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzc()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzW:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzX:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzY:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final zzB()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzg:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Lcom/google/android/gms/internal/ads/zzco;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzco;->zzj()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zze:Lcom/google/android/gms/internal/ads/zzcv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcp;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzf:Lcom/google/android/gms/internal/ads/zztd;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcp;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()V

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzN:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzU:Z

    return-void
.end method

.method public final zzC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zze()V

    return-void
.end method

.method final synthetic zzE()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzX:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzta;->zzay(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzX:J

    :cond_0
    return-void
.end method

.method final synthetic zzF()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzta;->zzav(Lcom/google/android/gms/internal/ads/zzta;)V

    :cond_0
    return-void
.end method

.method final synthetic zzI()Lcom/google/android/gms/internal/ads/zzsn;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    return-object v0
.end method

.method final synthetic zzJ()Lcom/google/android/gms/internal/ads/zzrg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    return-object v0
.end method

.method final synthetic zzK()Lcom/google/android/gms/internal/ads/zzsq;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    return-object v0
.end method

.method final synthetic zzL()Lcom/google/android/gms/internal/ads/zzqc;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    return-object v0
.end method

.method final synthetic zzM(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzM:Z

    return-void
.end method

.method final synthetic zzN()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzN:Z

    return v0
.end method

.method final synthetic zzO()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzT:J

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzrg;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzpq;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzl:Lcom/google/android/gms/internal/ads/zzpq;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzd(Lcom/google/android/gms/internal/ads/zzdn;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzsw;->zze(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zza(Lcom/google/android/gms/internal/ads/zzqf;)Lcom/google/android/gms/internal/ads/zzqh;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqh;->zzd:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzpz;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzU:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    const/4 v1, -0x1

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zza(Lcom/google/android/gms/internal/ads/zzqf;)Lcom/google/android/gms/internal/ads/zzqh;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzpy;-><init>()V

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzqh;->zza:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Z)Lcom/google/android/gms/internal/ads/zzpy;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpy;->zzb(Z)Lcom/google/android/gms/internal/ads/zzpy;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqh;->zzc:Z

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpy;->zzc(Z)Lcom/google/android/gms/internal/ads/zzpy;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpy;->zzd()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Z)J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzE:Z

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzqc;->zzk()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzac()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsq;->zzd(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzh:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsu;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzsu;->zzc:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzv:Lcom/google/android/gms/internal/ads/zzsu;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzv:Lcom/google/android/gms/internal/ads/zzsu;

    .line 6
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzsu;->zzc:J

    sub-long/2addr v0, v3

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzsu;->zza:Lcom/google/android/gms/internal/ads/zzav;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzav;->zzb:F

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzv(JF)J

    move-result-wide v2

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzZ:Lcom/google/android/gms/internal/ads/zzsr;

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzsr;->zzd(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzv:Lcom/google/android/gms/internal/ads/zzsu;

    .line 11
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzsu;->zzb:J

    add-long/2addr v4, v0

    sub-long/2addr v0, v2

    .line 12
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsu;->zzd:J

    goto :goto_1

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzv:Lcom/google/android/gms/internal/ads/zzsu;

    .line 13
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsu;->zzb:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzsu;->zzd:J

    add-long v4, v0, v2

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzZ:Lcom/google/android/gms/internal/ads/zzsr;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsr;->zze()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzsq;->zzd(J)J

    move-result-wide v2

    add-long/2addr v4, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzW:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    sub-long v2, v0, v2

    .line 16
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsq;->zzd(J)J

    move-result-wide v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzW:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzX:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzX:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzY:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzY:Landroid/os/Handler;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzY:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzY:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzst;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzst;-><init>(Lcom/google/android/gms/internal/ads/zzsw;)V

    const-wide/16 v1, 0x64

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-wide v4

    :cond_5
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzv;I[I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzr:Lcom/google/android/gms/internal/ads/zzqj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzb:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzss;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Lcom/google/android/gms/internal/ads/zzsw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzr:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzc(Lcom/google/android/gms/internal/ads/zzqj;)V

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzA(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 4
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)I

    move-result v4

    mul-int/2addr v4, v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzguc;

    .line 6
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzg:Lcom/google/android/gms/internal/ads/zzguf;

    .line 7
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzguc;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zze:Lcom/google/android/gms/internal/ads/zzcv;

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzZ:Lcom/google/android/gms/internal/ads/zzsr;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzsr;->zza()[Lcom/google/android/gms/internal/ads/zzco;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzguc;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzck;

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzguf;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    .line 11
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzck;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzte;

    .line 12
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzv;->zzJ:I

    iget v8, p1, Lcom/google/android/gms/internal/ads/zzv;->zzK:I

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzte;->zzq(II)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Lcom/google/android/gms/internal/ads/zzsl;

    .line 13
    invoke-virtual {v5, p3}, Lcom/google/android/gms/internal/ads/zzsl;->zzq([I)V

    .line 14
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcl;

    .line 15
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    invoke-direct {v5, v7, v3, v0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(III)V

    .line 16
    :try_start_0
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzck;->zza(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcn; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 19
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzb:I

    .line 20
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzc:I

    .line 21
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    .line 23
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)I

    move-result v5

    mul-int/2addr v5, v0

    :goto_0
    move-object v7, v6

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Lcom/google/android/gms/internal/ads/zzre;

    .line 17
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzre;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;)V

    throw v1

    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzck;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzguf;)V

    move-object v3, p1

    move v4, v1

    move v5, v4

    goto :goto_0

    .line 25
    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzq:Lcom/google/android/gms/internal/ads/zzqm;

    .line 26
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzb(Lcom/google/android/gms/internal/ads/zzqf;)Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v6
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzqd; {:try_start_1 .. :try_end_1} :catch_1

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    const/4 v8, 0x0

    const-string v9, ")"

    if-eqz v1, :cond_5

    .line 28
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-eqz v1, :cond_4

    .line 29
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzU:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzsq;-><init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;IILcom/google/android/gms/internal/ads/zzql;Lcom/google/android/gms/internal/ads/zzck;[B)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    return-void

    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    return-void

    .line 28
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzre;

    .line 29
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2a

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid output channel config (isOffload="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqf;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzre;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;)V

    throw v1

    .line 26
    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzre;

    .line 28
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x24

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid output encoding (isOffload="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqf;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzre;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;)V

    throw v1

    :catch_1
    move-exception v0

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzre;

    .line 27
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzre;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;)V

    throw v1
.end method

.method public final zzi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzN:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zza()V

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzD:Z

    return-void
.end method

.method public final zzk(Ljava/nio/ByteBuffer;JI)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzS()Z

    move-result v0

    if-nez v0, :cond_2

    return v7

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 3
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzsq;->zzb(Lcom/google/android/gms/internal/ads/zzsq;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzae()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzn()Z

    move-result v0

    if-eqz v0, :cond_3

    return v7

    .line 6
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzA()V

    goto :goto_1

    .line 62
    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v0, :cond_5

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    .line 8
    :cond_5
    :goto_1
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzZ(J)V

    :cond_6
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    if-nez v0, :cond_e

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzj:Lcom/google/android/gms/internal/ads/zzsv;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzb()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzrf; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_7

    return v7

    :cond_7
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzQ(Lcom/google/android/gms/internal/ads/zzql;)Lcom/google/android/gms/internal/ads/zzqc;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzrf; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 36
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    const v10, 0xf4240

    if-le v0, v10, :cond_d

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v0

    new-instance v11, Lcom/google/android/gms/internal/ads/zzqk;

    invoke-direct {v11, v0, v8}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Lcom/google/android/gms/internal/ads/zzql;[B)V

    .line 13
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzqk;->zze(I)Lcom/google/android/gms/internal/ads/zzqk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {v0, v11, v8}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzqk;[B)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzrf; {:try_start_2 .. :try_end_2} :catch_1

    .line 14
    :try_start_3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzsw;->zzQ(Lcom/google/android/gms/internal/ads/zzql;)Lcom/google/android/gms/internal/ads/zzqc;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 15
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Lcom/google/android/gms/internal/ads/zzql;)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzrf; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v10

    .line 10
    :goto_2
    :try_start_4
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v9

    invoke-direct {v0, v1, v9, v8}, Lcom/google/android/gms/internal/ads/zzsn;-><init>(Lcom/google/android/gms/internal/ads/zzsw;Lcom/google/android/gms/internal/ads/zzql;[B)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzi:Lcom/google/android/gms/internal/ads/zzsn;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 20
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzm(Lcom/google/android/gms/internal/ads/zzqa;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_8
    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzl:Lcom/google/android/gms/internal/ads/zzpq;

    if-eqz v0, :cond_9

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 23
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzn(Lcom/google/android/gms/internal/ads/zzpq;)V

    .line 24
    :cond_9
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzW()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    .line 25
    iget v0, v0, Lcom/google/android/gms/internal/ads/zze;->zza:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzR:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_a

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 26
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzo(Landroid/media/AudioDeviceInfo;)V

    :cond_a
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzE:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzh()I

    move-result v0

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz v10, :cond_e

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 28
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsq;->zze()Lcom/google/android/gms/internal/ads/zzrd;

    move-result-object v11

    check-cast v10, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzta;->zzaw()Lcom/google/android/gms/internal/ads/zzrb;

    move-result-object v10

    .line 29
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzrb;->zzk(Lcom/google/android/gms/internal/ads/zzrd;)V

    if-eq v0, v9, :cond_e

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzP:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/ads/zzqk;

    invoke-direct {v10, v9, v8}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Lcom/google/android/gms/internal/ads/zzql;[B)V

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    .line 31
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzqk;->zzg(I)Lcom/google/android/gms/internal/ads/zzqk;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzqk;[B)V

    .line 32
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Lcom/google/android/gms/internal/ads/zzql;)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/ads/zzqk;

    invoke-direct {v10, v9, v8}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Lcom/google/android/gms/internal/ads/zzql;[B)V

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    .line 33
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzqk;->zzg(I)Lcom/google/android/gms/internal/ads/zzqk;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzqk;[B)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzsq;->zza(Lcom/google/android/gms/internal/ads/zzql;)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzn:Lcom/google/android/gms/internal/ads/zzsq;

    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x23

    if-lt v10, v11, :cond_c

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzta;->zzax()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzta;->zzax()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v10

    .line 34
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzug;->zza(I)V

    :cond_c
    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzta;->zzaw()Lcom/google/android/gms/internal/ads/zzrb;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzrb;->zzm(I)V

    goto :goto_5

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 17
    :cond_d
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzV()V

    .line 18
    throw v9
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzrf; {:try_start_4 .. :try_end_4} :catch_1

    .line 7
    :goto_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzj:Lcom/google/android/gms/internal/ads/zzsv;

    .line 36
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzsv;->zza(Ljava/lang/Exception;)V

    return v7

    .line 35
    :cond_e
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzj:Lcom/google/android/gms/internal/ads/zzsv;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzc()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzE:Z

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_f

    .line 38
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzF:J

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzD:Z

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzE:Z

    .line 39
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzZ(J)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzN:Z

    if-eqz v0, :cond_f

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzi()V

    :cond_f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1c

    .line 41
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v11, :cond_10

    move v0, v6

    goto :goto_6

    :cond_10
    move v0, v7

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 42
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_11

    return v6

    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzC:I

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    .line 45
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzD(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzC:I

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    return v6

    :cond_13
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzu:Lcom/google/android/gms/internal/ads/zzsu;

    if-eqz v0, :cond_15

    .line 46
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzS()Z

    move-result v0

    if-nez v0, :cond_14

    return v7

    .line 47
    :cond_14
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzZ(J)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzu:Lcom/google/android/gms/internal/ads/zzsu;

    :cond_15
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzF:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result v13

    if-eqz v13, :cond_16

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzy:J

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 49
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzsq;->zzi()I

    move-result v15

    move-wide/from16 v16, v9

    int-to-long v9, v15

    div-long/2addr v13, v9

    goto :goto_8

    :cond_16
    move-wide/from16 v16, v9

    .line 62
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzz:J

    .line 49
    :goto_8
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Lcom/google/android/gms/internal/ads/zzte;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzte;->zzs()J

    move-result-wide v9

    sub-long/2addr v13, v9

    .line 50
    invoke-virtual {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzsq;->zzc(J)J

    move-result-wide v9

    add-long/2addr v11, v9

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzD:Z

    if-nez v0, :cond_18

    sub-long v9, v11, v3

    .line 51
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v13, 0x30d40

    cmp-long v0, v9, v13

    if-lez v0, :cond_18

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz v0, :cond_17

    new-instance v9, Lcom/google/android/gms/internal/ads/zzrh;

    .line 52
    invoke-direct {v9, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzrh;-><init>(JJ)V

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/zzrg;->zza(Ljava/lang/Exception;)V

    :cond_17
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzD:Z

    :cond_18
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzD:Z

    if-eqz v0, :cond_1a

    .line 53
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzS()Z

    move-result v0

    if-nez v0, :cond_19

    return v7

    :cond_19
    sub-long v9, v3, v11

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzF:J

    add-long/2addr v11, v9

    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzF:J

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzD:Z

    .line 54
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzZ(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzm:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz v0, :cond_1a

    cmp-long v9, v9, v16

    if-eqz v9, :cond_1a

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzta;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzta;->zzao()V

    :cond_1a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzy:J

    .line 57
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v11, v0

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzy:J

    goto :goto_9

    .line 62
    :cond_1b
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzz:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzC:I

    int-to-long v11, v0

    int-to-long v13, v5

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzz:J

    .line 57
    :goto_9
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzI:I

    .line 58
    :cond_1c
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzR(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1d

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzH:Ljava/nio/ByteBuffer;

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzI:I

    return v6

    :cond_1d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 60
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzl()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio output"

    .line 61
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzA()V

    return v6

    :cond_1e
    return v7
.end method

.method public final zzl()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzK:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzae()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzK:Z

    :cond_0
    return-void
.end method

.method public final zzm()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzK:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzn()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public final zzn()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzM:Z

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzac()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzqc;->zzk()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzqc;->zzi()I

    move-result v4

    .line 4
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzs(JI)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzav;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzav;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzav;->zzb:F

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/high16 v2, 0x41000000    # 8.0f

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzav;->zzc:F

    .line 4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzav;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzY(Lcom/google/android/gms/internal/ads/zzav;)V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzav;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    return-object v0
.end method

.method public final zzq(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzx:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzY(Lcom/google/android/gms/internal/ads/zzav;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzt:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzt:Lcom/google/android/gms/internal/ads/zzd;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzX()V

    return-void
.end method

.method public final zzs(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzP:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzP:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzO:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzX()V

    :cond_1
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zze;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zze;->zza:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    return-void
.end method

.method public final zzu(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzR:Landroid/media/AudioDeviceInfo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqc;->zzo(Landroid/media/AudioDeviceInfo;)V

    :cond_0
    return-void
.end method

.method public final zzv(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzS:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzaf(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzS:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzX()V

    return-void
.end method

.method public final zzw()J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzf()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzqc;->zzj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsq;->zzd(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzj()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzo:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()Lcom/google/android/gms/internal/ads/zzql;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaey;->zzf(I)I

    move-result v0

    const v3, -0x7fffffff

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    int-to-long v5, v0

    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v3, 0xf4240

    .line 5
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzx(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzqc;->zzg()Z

    :cond_0
    return-void
.end method

.method public final zzy(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzG:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzG:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzW()V

    :cond_0
    return-void
.end method

.method public final zzz()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzN:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsw;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsw;->zzs:Lcom/google/android/gms/internal/ads/zzqc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqc;->zzb()V

    :cond_0
    return-void
.end method
