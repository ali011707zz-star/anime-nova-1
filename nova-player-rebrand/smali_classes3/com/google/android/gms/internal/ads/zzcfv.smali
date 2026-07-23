.class public abstract Lcom/google/android/gms/internal/ads/zzcfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcfv;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcfv;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzP()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfv;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static zzQ()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfv;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected static zzf()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfv;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method protected static zzi()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfv;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public abstract zzA(I)V
.end method

.method public abstract zzB()Z
.end method

.method public abstract zzC()I
.end method

.method public abstract zzD()J
.end method

.method public abstract zzE(Z)V
.end method

.method public abstract zzF(I)V
.end method

.method public abstract zzG(I)V
.end method

.method public abstract zzH()J
.end method

.method public abstract zzI()J
.end method

.method public abstract zzJ()J
.end method

.method public abstract zzK()J
.end method

.method public abstract zzL()I
.end method

.method public abstract zzM(Z)V
.end method

.method public abstract zzN()J
.end method

.method public abstract zzO()J
.end method

.method public abstract zzj()Ljava/lang/Integer;
.end method

.method public abstract zzn(Ljava/lang/Integer;)V
.end method

.method public abstract zzq([Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract zzr([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract zzs(Lcom/google/android/gms/internal/ads/zzcfu;)V
.end method

.method public abstract zzt()V
.end method

.method public abstract zzu(Landroid/view/Surface;Z)V
.end method

.method public abstract zzv(FZ)V
.end method

.method public abstract zzw()V
.end method

.method public abstract zzx(J)V
.end method

.method public abstract zzy(I)V
.end method

.method public abstract zzz(I)V
.end method
