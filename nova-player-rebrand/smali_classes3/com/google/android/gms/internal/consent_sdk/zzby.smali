.class public final Lcom/google/android/gms/internal/consent_sdk/zzby;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzby;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)Lcom/google/android/gms/internal/consent_sdk/zzby;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzby;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzby;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzbx;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzby;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzav;->zza()Landroid/os/Handler;

    move-result-object v1

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzby;->zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzce;->zza()Lcom/google/android/gms/internal/consent_sdk/zzcd;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbx;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbx;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbz;Landroid/os/Handler;Lcom/google/android/gms/internal/consent_sdk/zzcd;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzby;->zza()Lcom/google/android/gms/internal/consent_sdk/zzbx;

    move-result-object v0

    return-object v0
.end method
