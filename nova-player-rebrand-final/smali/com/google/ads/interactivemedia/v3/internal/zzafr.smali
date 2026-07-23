.class public final Lcom/google/ads/interactivemedia/v3/internal/zzafr;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzq:Lcom/google/ads/interactivemedia/v3/internal/zzafr;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:I

.field private zzf:Lcom/google/ads/interactivemedia/v3/internal/zzaga;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/ads/interactivemedia/v3/internal/zzafm;

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:I

.field private zzo:Lcom/google/ads/interactivemedia/v3/internal/zzacy;

.field private zzp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzafr;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafr;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzafr;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzafr;

    .line 2
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafr;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafr;->zzg:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaG()Lcom/google/ads/interactivemedia/v3/internal/zzacy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafr;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzacy;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafr;->zzp:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/ads/interactivemedia/v3/internal/zzafr;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzafr;

    return-object v0
.end method


# virtual methods
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
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzafr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzafr;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzafq;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzafq;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzafr;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzafr;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xe

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string/jumbo v3, "zzd"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzh"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzi"

    aput-object p2, p1, v0

    const-string/jumbo p2, "zzj"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzk"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzl"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzm"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzn"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzo"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzp"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string/jumbo p2, "zze"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzf"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzafr;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzafr;

    const-string p3, "\u0004\r\u0000\u0001\u0001\u000e\r\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u1004\u0001\u0004\u000c\u0005\u1009\u0002\u0006\u0002\u0007\u0002\u0008\u0002\t\u000c\n\'\u000b\u0208\r\u000c\u000e\u1009\u0000"

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
