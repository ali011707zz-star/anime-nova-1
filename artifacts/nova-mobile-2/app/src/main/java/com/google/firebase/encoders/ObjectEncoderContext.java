package com.google.firebase.encoders;

import java.io.IOException;

/* loaded from: classes.dex */
public interface ObjectEncoderContext {
    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, int i10) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, long j10) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, Object obj) throws IOException;

    ObjectEncoderContext add(FieldDescriptor fieldDescriptor, boolean z10) throws IOException;
}
