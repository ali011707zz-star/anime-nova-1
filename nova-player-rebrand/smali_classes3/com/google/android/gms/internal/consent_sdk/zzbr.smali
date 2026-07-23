.class public final Lcom/google/android/gms/internal/consent_sdk/zzbr;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zztk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)Lcom/google/android/gms/internal/consent_sdk/zzbr;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbr;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzax;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbq;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbr;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 3
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbq;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztm;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
