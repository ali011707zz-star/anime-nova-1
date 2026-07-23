.class public final Lcom/google/ads/interactivemedia/v3/internal/zzr;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzq:Lcom/google/ads/interactivemedia/v3/internal/zzr;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:J

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:J

.field private zzk:Ljava/lang/String;

.field private zzl:J

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Lcom/google/ads/interactivemedia/v3/internal/zzada;

.field private zzp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzr;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzr;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzr;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzr;

    .line 2
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzn:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaH()Lcom/google/ads/interactivemedia/v3/internal/zzada;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzada;

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzax()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzn;

    return-object v0
.end method

.method static synthetic zzh()Lcom/google/ads/interactivemedia/v3/internal/zzr;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzr;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzc(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zze:J

    return-void
.end method

.method final synthetic zzd(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic zze(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzg:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzf(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzh:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzg(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzn:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzi(I)V
    .locals 0

    .line 0
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzp:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzb:I

    return-void
.end method

.method protected final zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzr;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzn;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzn;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzr;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzr;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x10

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string/jumbo v3, "zzd"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v0

    const-string/jumbo p2, "zzh"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzi"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzj"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzk"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzl"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzm"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzn"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzo"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-class p2, Lcom/google/ads/interactivemedia/v3/internal/zzp;

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzp"

    const/16 p3, 0xe

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacw;

    const/16 p3, 0xf

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzr;

    const-string p3, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1008\u0007\t\u1002\u0008\n\u1008\t\u000b\u1008\n\u000c\u001b\r\u180c\u000b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaE(Lcom/google/ads/interactivemedia/v3/internal/zzadx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
