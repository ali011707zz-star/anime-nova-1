.class public abstract Lcom/google/android/gms/internal/consent_sdk/zzpa;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrq;


# instance fields
.field protected zza:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzpa;->zza:I

    return-void
.end method


# virtual methods
.method public final zzE(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzn()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/consent_sdk/zzpv;->$r8$clinit:I

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    move v0, v1

    .line 2
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzpt;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzpt;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzB(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzpv;->zzI()V

    return-void
.end method

.method abstract zzj(Lcom/google/android/gms/internal/consent_sdk/zzsa;)I
.end method
