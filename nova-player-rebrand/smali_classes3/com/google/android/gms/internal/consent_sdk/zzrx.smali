.class final Lcom/google/android/gms/internal/consent_sdk/zzrx;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/consent_sdk/zzrx;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzsb;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzrx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzrx;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrx;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzrh;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzsb;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/consent_sdk/zzrx;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzrx;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrx;

    return-object v0
.end method


# virtual methods
.method final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/consent_sdk/zzsa;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzqs;->zzb:[B

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrx;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzsa;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzrx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzsb;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzsb;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/consent_sdk/zzsa;

    move-result-object v1

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzsa;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "messageType"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
