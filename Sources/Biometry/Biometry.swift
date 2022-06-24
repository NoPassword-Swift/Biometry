//
//  Biometry.swift
//  Biometry
//

import LocalAuthentication

public enum Biometry {
	public enum Kind {
		case none
		case touch
		case face
	}

	public static let kind: Kind = {
		let context = LAContext()
		if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) {
			switch context.biometryType {
				case .none:
					return .none
				case .touchID:
					return .touch
				case .faceID:
					return .face
				@unknown default:
					return .none
			}
		}
		return .none
	}()
}
