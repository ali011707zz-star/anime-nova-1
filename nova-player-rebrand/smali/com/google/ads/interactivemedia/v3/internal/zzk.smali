.class public final Lcom/google/ads/interactivemedia/v3/internal/zzk;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzl:Lcom/google/ads/interactivemedia/v3/internal/zzk;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

.field private zzj:Lcom/google/ads/interactivemedia/v3/internal/zzac;

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzk;

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zze:Z

    const-string v1, "unknown_host"

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzf:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzh:Z

    return-void
.end method

.method public static zzg()Lcom/google/ads/interactivemedia/v3/internal/zzj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzax()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzj;

    return-object v0
.end method

.method static synthetic zzl()Lcom/google/ads/interactivemedia/v3/internal/zzk;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zze:Z

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzg:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzh:Z

    return v0
.end method

.method public final zze()Lcom/google/ads/interactivemedia/v3/internal/zzaa;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()Lcom/google/ads/interactivemedia/v3/internal/zzac;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzac;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzac;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzac;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final synthetic zzh(Ljava/lang/String;)V
    .locals 0

    .line 0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    const-string p1, "a.3.38.0"

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzi(Z)V
    .locals 0

    .line 0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzg:Z

    return-void
.end method

.method final synthetic zzj(Z)V
    .locals 0

    .line 0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzh:Z

    return-void
.end method

.method final synthetic zzk(Lcom/google/ads/interactivemedia/v3/internal/zzaa;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

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
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzj;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzj;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzk;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzk;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string/jumbo v3, "zzd"

    aput-object v3, p1, p2

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacw;

    aput-object p2, p1, v2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v0

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzh"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzi"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzj"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzk"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzk;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1007\u0007"

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

.method public final zzn()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzd:I

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final synthetic zzo(I)V
    .locals 0

    .line 0
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzd:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb:I

    return-void
.end method
