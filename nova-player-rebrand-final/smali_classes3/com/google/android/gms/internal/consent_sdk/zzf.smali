.class public final Lcom/google/android/gms/internal/consent_sdk/zzf;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zztk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zztk;)Lcom/google/android/gms/internal/consent_sdk/zzf;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzf;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztk;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzax;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zze;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zze;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
