.class abstract Lcom/google/android/gms/internal/consent_sdk/zzle;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/consent_sdk/zzrj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzsz;

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzsz;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzsz;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzrj;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;Lcom/google/android/gms/internal/consent_sdk/zzsz;Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzrj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzle;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrj;

    return-void
.end method
