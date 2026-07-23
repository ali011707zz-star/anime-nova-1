.class public final Lcom/google/android/gms/internal/consent_sdk/zzac;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzac;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzac;->zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzac;->zzc:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzac;->zzd:Lcom/google/android/gms/internal/consent_sdk/zztk;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)Lcom/google/android/gms/internal/consent_sdk/zzac;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzac;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzac;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzz;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzac;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzac;->zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

    check-cast v1, Lcom/google/android/gms/internal/consent_sdk/zzap;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzap;->zza()Lcom/google/android/gms/internal/consent_sdk/zzao;

    move-result-object v1

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzac;->zzc:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzac;->zzd:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v3}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzcr;

    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzz;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzz;-><init>(Lcom/google/android/gms/internal/consent_sdk/zze;Lcom/google/android/gms/internal/consent_sdk/zzao;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V

    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzac;->zza()Lcom/google/android/gms/internal/consent_sdk/zzz;

    move-result-object v0

    return-object v0
.end method
