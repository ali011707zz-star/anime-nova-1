.class public final Lcom/google/android/gms/internal/consent_sdk/zzan;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zztk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zztk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zztk;)Lcom/google/android/gms/internal/consent_sdk/zzan;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzan;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzan;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztk;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzan;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzam;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzam;-><init>(Landroid/app/Application;)V

    return-object v1
.end method
