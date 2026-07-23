.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkq;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;


# instance fields
.field private zzb:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zzf(Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzkq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaJ(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    return-object p0
.end method

.method public static zzg(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzkq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    invoke-static {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaK(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    return-object p0
.end method

.method public static zzh()Lcom/google/ads/interactivemedia/v3/internal/zzkp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzax()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzkp;

    return-object v0
.end method

.method public static zzi()Lcom/google/ads/interactivemedia/v3/internal/zzkq;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    return-object v0
.end method

.method static synthetic zzp()Lcom/google/ads/interactivemedia/v3/internal/zzkq;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzf:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzg:J

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzh:J

    return-wide v0
.end method

.method final synthetic zzj(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzk(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzl(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzf:J

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
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzkp;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzkp;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

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

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

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

.method final synthetic zzn(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzg:J

    return-void
.end method

.method final synthetic zzo(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb:I

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzh:J

    return-void
.end method
