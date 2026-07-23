.class public final Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzG:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

.field private static volatile zzH:Lcom/google/android/gms/internal/ads/zzidk; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzidk;"
        }
    .end annotation
.end field

.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field public static final zzi:I = 0x9

.field public static final zzj:I = 0xa

.field public static final zzk:I = 0xb

.field public static final zzl:I = 0xc

.field public static final zzm:I = 0xd

.field private static final zzx:Lcom/google/android/gms/internal/ads/zzica;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzica;"
        }
    .end annotation
.end field


# instance fields
.field private zzA:I

.field private zzB:I

.field private zzC:I

.field private zzD:I

.field private zzE:I

.field private zzF:J

.field private zzn:I

.field private zzo:J

.field private zzp:I

.field private zzu:J

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzibz;

.field private zzy:Lcom/google/android/gms/internal/ads/zzbgj$zzab;

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzx:Lcom/google/android/gms/internal/ads/zzica;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzG:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbC()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzw:Lcom/google/android/gms/internal/ads/zzibz;

    return-void
.end method

.method private zzaB(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzv:J

    return-void
.end method

.method private zzaD()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzw:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzicd;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbD(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzw:Lcom/google/android/gms/internal/ads/zzibz;

    :cond_0
    return-void
.end method

.method private zzaG(Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzaD()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzw:Lcom/google/android/gms/internal/ads/zzibz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzibz;->zzi(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zzaI(Lcom/google/android/gms/internal/ads/zzbgj$zzab;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzy:Lcom/google/android/gms/internal/ads/zzbgj$zzab;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    return-void
.end method

.method private zzaL(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzz:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    return-void
.end method

.method static synthetic zzau()Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzG:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    return-object v0
.end method

.method private zzav(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzo:J

    return-void
.end method

.method private zzax(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzp:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    return-void
.end method

.method private zzaz(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzu:J

    return-void
.end method

.method private zzcf(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzA:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    return-void
.end method

.method private zzch(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzB:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    return-void
.end method

.method private zzcj(I)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzC:I

    return-void
.end method

.method private zzcl(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzD:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    return-void
.end method

.method private zzcn(Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzE:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    return-void
.end method

.method private zzcp(J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzn:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzF:J

    return-void
.end method

.method public static zzk([B)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzG:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbU(Lcom/google/android/gms/internal/ads/zzibr;[B)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    return-object p0
.end method

.method public static zzz()Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzG:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    return-object v0
.end method


# virtual methods
.method final synthetic zzF(J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzav(J)V

    return-void
.end method

.method final synthetic zzJ(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzax(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V

    return-void
.end method

.method final synthetic zzN(J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzaz(J)V

    return-void
.end method

.method final synthetic zzR(J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzaB(J)V

    return-void
.end method

.method final synthetic zzZ(Ljava/lang/Iterable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzaG(Ljava/lang/Iterable;)V

    return-void
.end method

.method final synthetic zzad(Lcom/google/android/gms/internal/ads/zzbgj$zzab;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzaI(Lcom/google/android/gms/internal/ads/zzbgj$zzab;)V

    return-void
.end method

.method final synthetic zzag(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzaL(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V

    return-void
.end method

.method final synthetic zzai(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzcf(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V

    return-void
.end method

.method final synthetic zzak(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzch(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V

    return-void
.end method

.method final synthetic zzam(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzcj(I)V

    return-void
.end method

.method final synthetic zzao(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzcl(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)V

    return-void
.end method

.method final synthetic zzaq(Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzcn(Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;)V

    return-void
.end method

.method final synthetic zzas(J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzcp(J)V

    return-void
.end method

.method public zzb()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzo:J

    return-wide v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    const/4 v1, 0x0

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzH:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzH:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzG:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzH:Lcom/google/android/gms/internal/ads/zzidk;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0

    .line 11
    :cond_2
    throw v1

    .line 2
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzG:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    return-object v0

    .line 8
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;-><init>()V

    return-object v0

    .line 5
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v11

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;->zze()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object v12

    const/16 v13, 0x15

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "zzn"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string v14, "zzo"

    aput-object v14, v13, v1

    const-string v1, "zzp"

    aput-object v1, v13, v6

    aput-object v0, v13, v5

    const-string v0, "zzu"

    aput-object v0, v13, v4

    const-string v0, "zzv"

    aput-object v0, v13, v3

    const-string v0, "zzw"

    aput-object v0, v13, v2

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const-string v0, "zzy"

    const/16 v1, 0x8

    aput-object v0, v13, v1

    const-string v0, "zzz"

    const/16 v1, 0x9

    aput-object v0, v13, v1

    const/16 v0, 0xa

    aput-object v8, v13, v0

    const-string v0, "zzA"

    const/16 v1, 0xb

    aput-object v0, v13, v1

    const/16 v0, 0xc

    aput-object v9, v13, v0

    const-string v0, "zzB"

    const/16 v1, 0xd

    aput-object v0, v13, v1

    const/16 v0, 0xe

    aput-object v10, v13, v0

    const-string v0, "zzC"

    const/16 v1, 0xf

    aput-object v0, v13, v1

    const-string v0, "zzD"

    const/16 v1, 0x10

    aput-object v0, v13, v1

    const/16 v0, 0x11

    aput-object v11, v13, v0

    const-string v0, "zzE"

    const/16 v1, 0x12

    aput-object v0, v13, v1

    const/16 v0, 0x13

    aput-object v12, v13, v0

    const-string v0, "zzF"

    const/16 v1, 0x14

    aput-object v0, v13, v1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzG:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    const-string v1, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u180c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u081e\u0006\u1009\u0004\u0007\u180c\u0005\u0008\u180c\u0006\t\u180c\u0007\n\u1004\u0008\u000b\u180c\t\u000c\u180c\n\r\u1002\u000b"

    .line 8
    invoke-static {v0, v1, v13}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2
    :cond_7
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public zzf()Lcom/google/android/gms/internal/ads/zzbgj$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzp:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzc(I)Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    :cond_0
    return-object v0
.end method
