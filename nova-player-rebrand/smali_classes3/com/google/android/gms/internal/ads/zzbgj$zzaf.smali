.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field private static final zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

.field private static volatile zzw:Lcom/google/android/gms/internal/ads/zzidk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk;"
        }
    .end annotation
.end field


# instance fields
.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzicd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzicd;"
        }
    .end annotation
.end field

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:J

.field private zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static zzB()Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    return-object v0
.end method

.method private zzaC(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzp:J

    return-void
.end method

.method private zzaE(I)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzu:I

    return-void
.end method

.method static synthetic zzai()Lcom/google/android/gms/internal/ads/zzbgj$zzaf;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object v0
.end method

.method private zzaj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzicd;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbN(Lcom/google/android/gms/internal/ads/zzicd;)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    :cond_0
    return-void
.end method

.method private zzan(Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzj:Lcom/google/android/gms/internal/ads/zzicd;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaW(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzaq(I)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzk:I

    return-void
.end method

.method private zzas(I)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzl:I

    return-void
.end method

.method private zzau(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzm:J

    return-void
.end method

.method private zzaw(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzn:Ljava/lang/String;

    return-void
.end method

.method private zzaz(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final synthetic zzN(Ljava/lang/Iterable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzan(Ljava/lang/Iterable;)V

    return-void
.end method

.method final synthetic zzS(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaq(I)V

    return-void
.end method

.method final synthetic zzU(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzas(I)V

    return-void
.end method

.method final synthetic zzW(J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzau(J)V

    return-void
.end method

.method final synthetic zzY(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaw(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzab(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaz(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzae(J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaC(J)V

    return-void
.end method

.method final synthetic zzag(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzaE(I)V

    return-void
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzw:Lcom/google/android/gms/internal/ads/zzidk;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p2

    return-object p1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 8
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzc;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;-><init>()V

    return-object p1

    :cond_6
    const/16 p1, 0xa

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "zzi"

    const/4 v5, 0x0

    aput-object v4, p1, v5

    const-string v4, "zzj"

    aput-object v4, p1, p2

    const-class p2, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    aput-object p2, p1, v3

    const-string p2, "zzk"

    aput-object p2, p1, v2

    const-string p2, "zzl"

    aput-object p2, p1, v1

    const-string p2, "zzm"

    aput-object p2, p1, v0

    const-string p2, "zzn"

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzu"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgj$zzaf;->zzv:Lcom/google/android/gms/internal/ads/zzbgj$zzaf;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u001b\u0002\u1004\u0000\u0003\u1004\u0001\u0004\u1002\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u1002\u0005\u0008\u1004\u0006"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
