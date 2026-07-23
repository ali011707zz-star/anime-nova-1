.class final Lcom/google/android/gms/internal/consent_sdk/zzag;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zztk;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzah;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzag;->zza:Lcom/google/android/gms/internal/consent_sdk/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzag;->zza:Lcom/google/android/gms/internal/consent_sdk/zzah;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzah;->zze(Lcom/google/android/gms/internal/consent_sdk/zzah;)Lcom/google/android/gms/internal/consent_sdk/zzah;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzaj;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzah;Lcom/google/android/gms/internal/consent_sdk/zzal;)V

    return-object v1
.end method
