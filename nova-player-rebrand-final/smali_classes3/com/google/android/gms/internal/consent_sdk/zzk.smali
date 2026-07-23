.class public final Lcom/google/android/gms/internal/consent_sdk/zzk;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zztk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->zzc:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->zzd:Lcom/google/android/gms/internal/consent_sdk/zztk;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)Lcom/google/android/gms/internal/consent_sdk/zzk;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzx;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzx;->zza()Lcom/google/android/gms/internal/consent_sdk/zzw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->zzc:Lcom/google/android/gms/internal/consent_sdk/zztk;

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzbq;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzk;->zzd:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v3}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzcr;

    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzj;

    .line 3
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzw;Lcom/google/android/gms/internal/consent_sdk/zzbq;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V

    return-object v4
.end method
