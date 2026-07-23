.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbg;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzbq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/consent_sdk/zzbe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbq;Lcom/google/android/gms/internal/consent_sdk/zzbe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbg;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbq;Lcom/google/android/gms/internal/consent_sdk/zzbe;)V

    return-void
.end method
