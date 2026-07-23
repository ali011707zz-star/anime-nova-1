.class public final Lcom/google/android/gms/internal/consent_sdk/zzgz;
.super Lcom/google/android/gms/internal/consent_sdk/zzqj;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzhb;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzha;->zzc()Lcom/google/android/gms/internal/consent_sdk/zzha;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgz;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzm()V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzha;

    const-string v0, "4.0.0"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzha;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzha;Ljava/lang/String;)V

    return-object p0
.end method
