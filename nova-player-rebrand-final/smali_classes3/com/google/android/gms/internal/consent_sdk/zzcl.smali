.class public final Lcom/google/android/gms/internal/consent_sdk/zzcl;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:Lcom/google/android/gms/internal/consent_sdk/zzch;

.field public zzd:Ljava/lang/String;

.field public zze:Ljava/lang/Boolean;

.field public zzf:Ljava/util/Map;

.field public zzg:Lcom/google/android/gms/internal/consent_sdk/zzcj;

.field public zzh:Lcom/google/android/gms/internal/consent_sdk/zzcf;

.field public zzi:Lcom/google/android/gms/internal/consent_sdk/zzck;

.field public zzj:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzf:Ljava/util/Map;

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzj:Ljava/util/List;

    return-void
.end method
