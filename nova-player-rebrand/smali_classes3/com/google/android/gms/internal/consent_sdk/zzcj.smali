.class public final Lcom/google/android/gms/internal/consent_sdk/zzcj;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field public zza:Ljava/lang/Integer;

.field public zzb:Ljava/lang/Integer;

.field public zzc:Ljava/lang/Double;

.field public zzd:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzd:Ljava/util/List;

    return-void
.end method
