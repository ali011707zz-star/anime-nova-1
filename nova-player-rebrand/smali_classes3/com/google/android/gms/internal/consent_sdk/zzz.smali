.class final Lcom/google/android/gms/internal/consent_sdk/zzz;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zze;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzao;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zzaq;

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zzcr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zze;Lcom/google/android/gms/internal/consent_sdk/zzao;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->zza:Lcom/google/android/gms/internal/consent_sdk/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzao;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zze;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->zza:Lcom/google/android/gms/internal/consent_sdk/zze;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzao;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzao;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzaq;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    return-object p0
.end method


# virtual methods
.method final zzb(Lcom/google/android/gms/internal/consent_sdk/zzcn;)Lcom/google/android/gms/internal/consent_sdk/zzab;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzy;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzy;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzz;Lcom/google/android/gms/internal/consent_sdk/zzcn;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzy;->zza()Lcom/google/android/gms/internal/consent_sdk/zzab;

    move-result-object p1

    return-object p1
.end method
