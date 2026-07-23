.class final Lcom/google/android/gms/internal/ads/zzgfk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfh;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgfu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgfu;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfk;->zza:Lcom/google/android/gms/internal/ads/zzgfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgfk;->zza:Lcom/google/android/gms/internal/ads/zzgfu;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzB:I

    not-int v2, v2

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzB:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbM:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbK:I

    xor-int/2addr v3, v4

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzy:I

    or-int/2addr v3, v4

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzO:I

    xor-int/2addr v3, v5

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcl:I

    xor-int/2addr v3, v5

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaW:I

    xor-int/2addr v3, v5

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzP:I

    xor-int/2addr v3, v5

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzP:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzG:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaI:I

    not-int v7, v6

    and-int v8, v5, v7

    xor-int v9, v5, v8

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaW:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzb:I

    xor-int/2addr v8, v10

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzas:I

    or-int/2addr v8, v11

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzx:I

    xor-int/2addr v8, v12

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbu:I

    xor-int/2addr v8, v13

    iput v8, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbu:I

    xor-int v13, v10, v5

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcl:I

    and-int/2addr v7, v13

    or-int v14, v11, v7

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbH:I

    xor-int/2addr v14, v15

    iput v14, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzO:I

    not-int v15, v7

    and-int/2addr v15, v11

    xor-int/2addr v12, v15

    or-int/2addr v12, v4

    and-int v15, v11, v7

    or-int/2addr v6, v13

    xor-int/2addr v6, v10

    or-int v10, v11, v6

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzah:I

    xor-int/2addr v13, v10

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzb:I

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzce:I

    xor-int/2addr v0, v13

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcy:I

    or-int/2addr v0, v13

    xor-int/2addr v0, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzL:I

    xor-int/2addr v0, v8

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzL:I

    and-int v8, v11, v6

    xor-int/2addr v8, v6

    or-int/2addr v8, v4

    move/from16 p1, v6

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbh:I

    xor-int/2addr v6, v8

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzce:I

    xor-int v8, p1, v15

    iput v8, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbK:I

    xor-int/2addr v8, v12

    iput v8, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbH:I

    not-int v12, v4

    xor-int/2addr v9, v10

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzD:I

    and-int/2addr v9, v12

    xor-int/2addr v9, v10

    or-int/2addr v9, v13

    xor-int/2addr v6, v9

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzch:I

    xor-int/2addr v6, v9

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzch:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaR:I

    xor-int/2addr v9, v7

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaY:I

    xor-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaY:I

    and-int v10, v9, v12

    xor-int/2addr v9, v10

    or-int/2addr v9, v13

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzC:I

    xor-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzx:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzp:I

    xor-int/2addr v9, v10

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzp:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzM:I

    xor-int/2addr v7, v10

    or-int/2addr v7, v11

    xor-int/2addr v7, v5

    and-int/2addr v7, v12

    xor-int/2addr v7, v14

    or-int/2addr v7, v13

    xor-int/2addr v7, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzt:I

    xor-int/2addr v7, v8

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzt:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzi:I

    not-int v10, v5

    and-int/2addr v10, v8

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcq:I

    xor-int/2addr v10, v12

    iput v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaI:I

    and-int/2addr v4, v10

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbf:I

    xor-int/2addr v4, v10

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzat:I

    or-int/2addr v4, v10

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzE:I

    xor-int/2addr v4, v10

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaF:I

    and-int/2addr v4, v10

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbs:I

    xor-int/2addr v4, v12

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzy:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzF:I

    xor-int/2addr v4, v12

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzF:I

    and-int/lit16 v12, v6, 0xff

    int-to-byte v12, v12

    const/4 v13, 0x0

    aput-byte v12, p2, v13

    ushr-int/lit8 v12, v6, 0x8

    const/16 v13, 0xff

    and-int/2addr v12, v13

    int-to-byte v12, v12

    const/4 v14, 0x1

    aput-byte v12, p2, v14

    ushr-int/lit8 v12, v6, 0x10

    and-int/2addr v12, v13

    int-to-byte v12, v12

    const/4 v14, 0x2

    aput-byte v12, p2, v14

    const/16 v12, 0x18

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/4 v14, 0x3

    aput-byte v6, p2, v14

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbm:I

    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    const/4 v15, 0x4

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x8

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/4 v15, 0x5

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x10

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/4 v15, 0x6

    aput-byte v14, p2, v15

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/4 v14, 0x7

    aput-byte v6, p2, v14

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzd:I

    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    const/16 v15, 0x8

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x8

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x9

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x10

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0xa

    aput-byte v14, p2, v15

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v14, 0xb

    aput-byte v6, p2, v14

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzR:I

    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    const/16 v15, 0xc

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x8

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0xd

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x10

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0xe

    aput-byte v14, p2, v15

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v14, 0xf

    aput-byte v6, p2, v14

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzf:I

    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    const/16 v15, 0x10

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x8

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x11

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x10

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x12

    aput-byte v14, p2, v15

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v14, 0x13

    aput-byte v6, p2, v14

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaj:I

    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    const/16 v15, 0x14

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x8

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x15

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x10

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x16

    aput-byte v14, p2, v15

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v14, 0x17

    aput-byte v6, p2, v14

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbC:I

    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    aput-byte v14, p2, v12

    ushr-int/lit8 v14, v6, 0x8

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x19

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x10

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x1a

    aput-byte v14, p2, v15

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v14, 0x1b

    aput-byte v6, p2, v14

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbr:I

    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    const/16 v15, 0x1c

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x8

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x1d

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x10

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x1e

    aput-byte v14, p2, v15

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v14, 0x1f

    aput-byte v6, p2, v14

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzj:I

    and-int/lit16 v14, v6, 0xff

    int-to-byte v14, v14

    const/16 v15, 0x20

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x8

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x21

    aput-byte v14, p2, v15

    ushr-int/lit8 v14, v6, 0x10

    and-int/2addr v14, v13

    int-to-byte v14, v14

    const/16 v15, 0x22

    aput-byte v14, p2, v15

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v14, 0x23

    aput-byte v6, p2, v14

    and-int/lit16 v6, v8, 0xff

    int-to-byte v6, v6

    const/16 v14, 0x24

    aput-byte v6, p2, v14

    ushr-int/lit8 v6, v8, 0x8

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v14, 0x25

    aput-byte v6, p2, v14

    ushr-int/lit8 v6, v8, 0x10

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v14, 0x26

    aput-byte v6, p2, v14

    shr-int/lit8 v6, v8, 0x18

    int-to-byte v6, v6

    const/16 v8, 0x27

    aput-byte v6, p2, v8

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcs:I

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    const/16 v14, 0x28

    aput-byte v8, p2, v14

    ushr-int/lit8 v8, v6, 0x8

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v14, 0x29

    aput-byte v8, p2, v14

    ushr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v14, 0x2a

    aput-byte v8, p2, v14

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v8, 0x2b

    aput-byte v6, p2, v8

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbP:I

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    const/16 v14, 0x2c

    aput-byte v8, p2, v14

    ushr-int/lit8 v8, v6, 0x8

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v14, 0x2d

    aput-byte v8, p2, v14

    ushr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v14, 0x2e

    aput-byte v8, p2, v14

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v8, 0x2f

    aput-byte v6, p2, v8

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbI:I

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    const/16 v14, 0x30

    aput-byte v8, p2, v14

    ushr-int/lit8 v8, v6, 0x8

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v14, 0x31

    aput-byte v8, p2, v14

    ushr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v14, 0x32

    aput-byte v8, p2, v14

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v8, 0x33

    aput-byte v6, p2, v8

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzay:I

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    const/16 v14, 0x34

    aput-byte v8, p2, v14

    ushr-int/lit8 v8, v6, 0x8

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v14, 0x35

    aput-byte v8, p2, v14

    ushr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v14, 0x36

    aput-byte v8, p2, v14

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v8, 0x37

    aput-byte v6, p2, v8

    and-int/lit16 v6, v9, 0xff

    int-to-byte v6, v6

    const/16 v8, 0x38

    aput-byte v6, p2, v8

    ushr-int/lit8 v6, v9, 0x8

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v8, 0x39

    aput-byte v6, p2, v8

    ushr-int/lit8 v6, v9, 0x10

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v8, 0x3a

    aput-byte v6, p2, v8

    shr-int/lit8 v6, v9, 0x18

    int-to-byte v6, v6

    const/16 v8, 0x3b

    aput-byte v6, p2, v8

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzW:I

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    const/16 v9, 0x3c

    aput-byte v8, p2, v9

    ushr-int/lit8 v8, v6, 0x8

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v9, 0x3d

    aput-byte v8, p2, v9

    ushr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v9, 0x3e

    aput-byte v8, p2, v9

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v8, 0x3f

    aput-byte v6, p2, v8

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzr:I

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    const/16 v9, 0x40

    aput-byte v8, p2, v9

    ushr-int/lit8 v8, v6, 0x8

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v9, 0x41

    aput-byte v8, p2, v9

    ushr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v9, 0x42

    aput-byte v8, p2, v9

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v8, 0x43

    aput-byte v6, p2, v8

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzq:I

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    const/16 v9, 0x44

    aput-byte v8, p2, v9

    ushr-int/lit8 v8, v6, 0x8

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v9, 0x45

    aput-byte v8, p2, v9

    ushr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v13

    int-to-byte v8, v8

    const/16 v9, 0x46

    aput-byte v8, p2, v9

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v8, 0x47

    aput-byte v6, p2, v8

    and-int/lit16 v6, v7, 0xff

    int-to-byte v6, v6

    const/16 v8, 0x48

    aput-byte v6, p2, v8

    ushr-int/lit8 v6, v7, 0x8

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v8, 0x49

    aput-byte v6, p2, v8

    ushr-int/lit8 v6, v7, 0x10

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v8, 0x4a

    aput-byte v6, p2, v8

    shr-int/lit8 v6, v7, 0x18

    int-to-byte v6, v6

    const/16 v7, 0x4b

    aput-byte v6, p2, v7

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbc:I

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x4c

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x8

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x4d

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x4e

    aput-byte v7, p2, v8

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v7, 0x4f

    aput-byte v6, p2, v7

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzv:I

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x50

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x8

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x51

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x52

    aput-byte v7, p2, v8

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v7, 0x53

    aput-byte v6, p2, v7

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzu:I

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x54

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x8

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x55

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x56

    aput-byte v7, p2, v8

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v7, 0x57

    aput-byte v6, p2, v7

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzba:I

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x58

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x8

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x59

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x5a

    aput-byte v7, p2, v8

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v7, 0x5b

    aput-byte v6, p2, v7

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzao:I

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x5c

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x8

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x5d

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x5e

    aput-byte v7, p2, v8

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v7, 0x5f

    aput-byte v6, p2, v7

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcp:I

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x60

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x8

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x61

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x62

    aput-byte v7, p2, v8

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v7, 0x63

    aput-byte v6, p2, v7

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbo:I

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/16 v8, 0x64

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x8

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x65

    aput-byte v7, p2, v8

    ushr-int/lit8 v7, v6, 0x10

    and-int/2addr v7, v13

    int-to-byte v7, v7

    const/16 v8, 0x66

    aput-byte v7, p2, v8

    shr-int/2addr v6, v12

    int-to-byte v6, v6

    const/16 v7, 0x67

    aput-byte v6, p2, v7

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    const/16 v7, 0x68

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x8

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v7, 0x69

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v7, 0x6a

    aput-byte v6, p2, v7

    shr-int/2addr v2, v12

    int-to-byte v2, v2

    const/16 v6, 0x6b

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzav:I

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    const/16 v7, 0x6c

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x8

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v7, 0x6d

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v7, 0x6e

    aput-byte v6, p2, v7

    shr-int/2addr v2, v12

    int-to-byte v2, v2

    const/16 v6, 0x6f

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcg:I

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    const/16 v7, 0x70

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x8

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v7, 0x71

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v7, 0x72

    aput-byte v6, p2, v7

    shr-int/2addr v2, v12

    int-to-byte v2, v2

    const/16 v6, 0x73

    aput-byte v2, p2, v6

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaZ:I

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    const/16 v7, 0x74

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x8

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v7, 0x75

    aput-byte v6, p2, v7

    ushr-int/lit8 v6, v2, 0x10

    and-int/2addr v6, v13

    int-to-byte v6, v6

    const/16 v7, 0x76

    aput-byte v6, p2, v7

    shr-int/2addr v2, v12

    int-to-byte v2, v2

    const/16 v6, 0x77

    aput-byte v2, p2, v6

    and-int/lit16 v2, v4, 0xff

    int-to-byte v2, v2

    const/16 v6, 0x78

    aput-byte v2, p2, v6

    ushr-int/lit8 v2, v4, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v6, 0x79

    aput-byte v2, p2, v6

    ushr-int/lit8 v2, v4, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v6, 0x7a

    aput-byte v2, p2, v6

    shr-int/lit8 v2, v4, 0x18

    int-to-byte v2, v2

    const/16 v4, 0x7b

    aput-byte v2, p2, v4

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcG:I

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    const/16 v6, 0x7c

    aput-byte v4, p2, v6

    ushr-int/lit8 v4, v2, 0x8

    and-int/2addr v4, v13

    int-to-byte v4, v4

    const/16 v6, 0x7d

    aput-byte v4, p2, v6

    ushr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v13

    int-to-byte v4, v4

    const/16 v6, 0x7e

    aput-byte v4, p2, v6

    shr-int/2addr v2, v12

    int-to-byte v2, v2

    const/16 v4, 0x7f

    aput-byte v2, p2, v4

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbn:I

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    const/16 v6, 0x80

    aput-byte v4, p2, v6

    ushr-int/lit8 v4, v2, 0x8

    and-int/2addr v4, v13

    int-to-byte v4, v4

    const/16 v6, 0x81

    aput-byte v4, p2, v6

    ushr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v13

    int-to-byte v4, v4

    const/16 v6, 0x82

    aput-byte v4, p2, v6

    shr-int/2addr v2, v12

    int-to-byte v2, v2

    const/16 v4, 0x83

    aput-byte v2, p2, v4

    and-int/lit16 v2, v5, 0xff

    int-to-byte v2, v2

    const/16 v4, 0x84

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v5, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x85

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v5, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x86

    aput-byte v2, p2, v4

    shr-int/lit8 v2, v5, 0x18

    int-to-byte v2, v2

    const/16 v4, 0x87

    aput-byte v2, p2, v4

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzJ:I

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x88

    aput-byte v4, p2, v5

    ushr-int/lit8 v4, v2, 0x8

    and-int/2addr v4, v13

    int-to-byte v4, v4

    const/16 v5, 0x89

    aput-byte v4, p2, v5

    ushr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v13

    int-to-byte v4, v4

    const/16 v5, 0x8a

    aput-byte v4, p2, v5

    shr-int/2addr v2, v12

    int-to-byte v2, v2

    const/16 v4, 0x8b

    aput-byte v2, p2, v4

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaO:I

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    const/16 v5, 0x8c

    aput-byte v4, p2, v5

    ushr-int/lit8 v4, v2, 0x8

    and-int/2addr v4, v13

    int-to-byte v4, v4

    const/16 v5, 0x8d

    aput-byte v4, p2, v5

    ushr-int/lit8 v4, v2, 0x10

    and-int/2addr v4, v13

    int-to-byte v4, v4

    const/16 v5, 0x8e

    aput-byte v4, p2, v5

    shr-int/2addr v2, v12

    int-to-byte v2, v2

    const/16 v4, 0x8f

    aput-byte v2, p2, v4

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v4, 0x90

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x91

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x92

    aput-byte v2, p2, v4

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0x93

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcz:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v4, 0x94

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x95

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x96

    aput-byte v2, p2, v4

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0x97

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaJ:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v4, 0x98

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x99

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x9a

    aput-byte v2, p2, v4

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0x9b

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaQ:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v4, 0x9c

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x9d

    aput-byte v2, p2, v4

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v4, 0x9e

    aput-byte v2, p2, v4

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0x9f

    aput-byte v0, p2, v2

    and-int/lit16 v0, v3, 0xff

    int-to-byte v0, v0

    const/16 v2, 0xa0

    aput-byte v0, p2, v2

    ushr-int/lit8 v0, v3, 0x8

    and-int/2addr v0, v13

    int-to-byte v0, v0

    const/16 v2, 0xa1

    aput-byte v0, p2, v2

    ushr-int/lit8 v0, v3, 0x10

    and-int/2addr v0, v13

    int-to-byte v0, v0

    const/16 v2, 0xa2

    aput-byte v0, p2, v2

    shr-int/lit8 v0, v3, 0x18

    int-to-byte v0, v0

    const/16 v2, 0xa3

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzg:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xa4

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xa5

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xa6

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xa7

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbS:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xa8

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xa9

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xaa

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xab

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaX:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xac

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xad

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xae

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xaf

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzT:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xb0

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xb1

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xb2

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xb3

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbw:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xb4

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xb5

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xb6

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xb7

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcx:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xb8

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xb9

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xba

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xbb

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaK:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xbc

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xbd

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xbe

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xbf

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaS:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xc0

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xc1

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xc2

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xc3

    aput-byte v0, p2, v2

    and-int/lit16 v0, v11, 0xff

    int-to-byte v0, v0

    const/16 v2, 0xc4

    aput-byte v0, p2, v2

    ushr-int/lit8 v0, v11, 0x8

    and-int/2addr v0, v13

    int-to-byte v0, v0

    const/16 v2, 0xc5

    aput-byte v0, p2, v2

    ushr-int/lit8 v0, v11, 0x10

    and-int/2addr v0, v13

    int-to-byte v0, v0

    const/16 v2, 0xc6

    aput-byte v0, p2, v2

    shr-int/lit8 v0, v11, 0x18

    int-to-byte v0, v0

    const/16 v2, 0xc7

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzZ:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xc8

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xc9

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xca

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xcb

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzY:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xcc

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xcd

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xce

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xcf

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcf:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xd0

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xd1

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xd2

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xd3

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaa:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xd4

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xd5

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xd6

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xd7

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzad:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xd8

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xd9

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xda

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xdb

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcb:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xdc

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xdd

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xde

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xdf

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbk:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xe0

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xe1

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xe2

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xe3

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbi:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xe4

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xe5

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xe6

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xe7

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcr:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xe8

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xe9

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xea

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xeb

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzcA:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xec

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xed

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xee

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xef

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzbd:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xf0

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xf1

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xf2

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xf3

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzU:I

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xf4

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xf5

    aput-byte v2, p2, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v13

    int-to-byte v2, v2

    const/16 v3, 0xf6

    aput-byte v2, p2, v3

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v2, 0xf7

    aput-byte v0, p2, v2

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgfu;->zzaz:I

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xf8

    aput-byte v1, p2, v2

    ushr-int/lit8 v1, v0, 0x8

    and-int/2addr v1, v13

    int-to-byte v1, v1

    const/16 v2, 0xf9

    aput-byte v1, p2, v2

    ushr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v13

    int-to-byte v1, v1

    const/16 v2, 0xfa

    aput-byte v1, p2, v2

    shr-int/2addr v0, v12

    int-to-byte v0, v0

    const/16 v1, 0xfb

    aput-byte v0, p2, v1

    and-int/lit16 v0, v10, 0xff

    int-to-byte v0, v0

    const/16 v1, 0xfc

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, v10, 0x8

    and-int/2addr v0, v13

    int-to-byte v0, v0

    const/16 v1, 0xfd

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, v10, 0x10

    and-int/2addr v0, v13

    int-to-byte v0, v0

    const/16 v1, 0xfe

    aput-byte v0, p2, v1

    shr-int/lit8 v0, v10, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v13

    return-void
.end method
